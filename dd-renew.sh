#!/bin/bash

#set -eo pipefail

curl -o /tmp/DATADOG_APT_KEY_F14F620E https://keys.datadoghq.com/DATADOG_APT_KEY_F14F620E.public
sudo apt-key add /tmp/DATADOG_APT_KEY_F14F620E
sudo touch /usr/share/keyrings/datadog-archive-keyring.gpg
cat /tmp/DATADOG_APT_KEY_F14F620E | sudo gpg --import --batch --no-default-keyring --keyring /usr/share/keyrings/datadog-archive-keyring.gpg
sudo chmod a+r /usr/share/keyrings/datadog-archive-keyring.gpg

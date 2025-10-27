#!/bin/dash
sudo apt update -y
sudo apt install -y wget curl unzip apt-transport-https software-properties-common
wget -q "https://packages.microsoft.com/repos/edge/pool/main/m/microsoft-edge-stable/microsoft-edge-stable_140.0.3485.54-1_amd64.deb"
sudo dpkg -i microsoft-edge-stable_140.0.3485.54-1_amd64.deb
wget -q "https://packages.microsoft.com/config/ubuntu/$(lsb_release -rs)/packages-microsoft-prod.deb"
sudo dpkg -i packages-microsoft-prod.deb
sudo apt update
rm packages-microsoft-prod.deb
sudo apt install intune-portal -y
#!/usr/bin/env bash
# author: Scott Wang
# email: ScottWang1996@gmail.com
# blog: blog.54yongf.com
# description:
# Modify your hostname permanently, ensure your root privilege!
# sudo bash hostname_modify.sh

# new hostname
read -p "Please input your new hostname:" new
# old hostname
old=`cat /etc/hostname`

# modify and backup
sudo sed -i.bak "s/\b$old\b/$new/" /etc/hostname
sudo sed -i.bak "s/\b$old\b/$new/" /etc/hosts
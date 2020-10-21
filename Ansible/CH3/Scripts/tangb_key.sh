#!/bin/bash
# Script to retrieve JOSE TANG Key from serverb

adv=$(curl -sSf serverb/adv)
echo $adv | jose fmt -j- -g payload -y -o- | jose jwk use -i- -r -u verify -o- | jose jwk thp -i-

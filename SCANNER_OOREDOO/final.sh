#!/bin/bash
cp UNIQ_ALL_IP.TXT TEMP_UNIQ_ALL_IP.TXT
input="TEMP_UNIQ_ALL_IP.TXT"
cp $input 
PORT=80
DOMAIN="ca.netcom-ssh.xyz"

while IFS= read -r line
do
  
  echo "$line". $PORT $DOMAIN
  
  
  #python3 gen_ip.py "$line"
  #sed '1d' $input
  ./iniciar.sh "$line". $PORT $DOMAIN
  echo "$line". $PORT $DOMAIN >> SCANNED.TXT
done < "$input"

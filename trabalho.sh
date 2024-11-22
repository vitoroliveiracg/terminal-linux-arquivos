#!/bin/bash

# 1
sudo apt install -y fortune 

#2
fortune > mensagem1.txt
fortune > mensagem2.txt
fortune > mensagem3.txt

#3
cat mensagem1.txt mensagem2.txt mensagem3.txt > mensagens.txt

#4
cp mensagens.txt mensagens_antiga.txt

fortune >> mensagens.txt

#5
wc -l mensagens.txt | cut -d " " -f 1 > linhas.txt

#6
grep -Fo "a" mensagens.txt | wc -l > letras.txt

#7
ls -R /etc 1> saida.txt 2> erros.txt

#8
ls -R /etc > saida_com_erros.txt 2>&1

#9
cat /etc/passwd | cut -d ":" -f 1 > usuarios.txt

#10
cat /etc/passwd | cut -d ":" -f 1 | sort > usuarios_ordenados.txt


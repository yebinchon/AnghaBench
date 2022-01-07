
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int cipher_suite; } ;
struct tlsv1_client {TYPE_1__ rl; } ;
 int os_memcpy (int *,int *,size_t) ;
 int strcpy (char*,char*) ;

int tlsv1_client_get_cipher(struct tlsv1_client *conn, char *buf,
       size_t buflen)
{

 char *cipher;

 switch (conn->rl.cipher_suite) {
 case 129:
  cipher = "RC4-MD5";
  break;
 case 128:
  cipher = "RC4-SHA";
  break;
 case 136:
  cipher = "ADH-AES-128-SHA256";
  break;
 case 137:
  cipher = "ADH-AES-128-SHA";
  break;
 case 132:
  cipher = "AES-256-SHA";
  break;
 case 131:
  cipher = "AES-256-SHA256";
  break;
 case 134:
  cipher = "AES-128-SHA";
  break;
 case 133:
  cipher = "AES-128-SHA256";
  break;
 default:
  return -1;
 }

 os_memcpy((u8 *)buf, (u8 *)cipher, buflen);

 return 0;
}

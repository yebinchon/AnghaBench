
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ malloc (size_t) ;
 int snprintf (char*,int,char*,unsigned char) ;

__attribute__((used)) static char *hex_string(unsigned char *str, size_t len)
{


 char *hex_out;
 size_t i;

 hex_out = (char *) malloc(len*2 + 1);
 if (!hex_out) { goto Exit; }

 for (i = 0; i < len; ++i) {
  snprintf(hex_out + (i*2), 2, "%02x", str[i]);
 }

 hex_out[len*2] = 0;

Exit:
 return hex_out;
}

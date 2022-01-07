
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int hex2byte (char const*) ;

int hexstr2bin(const char *hex, u8 *buf, size_t len)
{
 size_t i;
 int a;
 const char *ipos = hex;
 u8 *opos = buf;

 for (i = 0; i < len; i++) {
  a = hex2byte(ipos);
  if (a < 0)
   return -1;
  *opos++ = a;
  ipos += 2;
 }
 return 0;
}

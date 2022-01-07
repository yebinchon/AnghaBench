
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char s32 ;



s32 hstr2nibble(const char *buf,s32 *nibble)
{
 s32 ch;

 ch = *buf;
 if(ch>='0' && ch<='9') {
  *nibble = ch - '0';
  return 1;
 }
 if(ch>='a' && ch<='f') {
  *nibble = ch - 'a' + 10;
  return 1;
 }
 if(ch>='A' && ch<='F') {
  *nibble = ch - 'A' + 10;
  return 1;
 }
 return 0;
}

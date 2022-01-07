
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void TruncateCharFromStr(char *str, char replace)
{
 char *src,*dst;

 if (str == ((void*)0))
 {
  return;
 }

 src = dst = str;

 while(*src != '\0')
 {
  if(*src != replace)
  {
   *dst = *src;
   dst++;
  }
  src++;
 }
 *dst = *src;
}

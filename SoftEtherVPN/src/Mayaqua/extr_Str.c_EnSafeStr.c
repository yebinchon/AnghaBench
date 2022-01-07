
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IsSafeChar (char) ;

void EnSafeStr(char *str, char replace)
{
 if (str == ((void*)0))
 {
  return;
 }

 while(*str != '\0')
 {
  if(IsSafeChar(*str) == 0)
  {
   *str = replace;
  }
  str++;
 }
}

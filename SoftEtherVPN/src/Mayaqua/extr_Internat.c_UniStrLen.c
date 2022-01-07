
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ wchar_t ;
typedef size_t UINT ;



UINT UniStrLen(wchar_t *str)
{
 UINT i;

 if (str == ((void*)0))
 {
  return 0;
 }

 i = 0;
 while (1)
 {
  if (str[i] == 0)
  {
   break;
  }
  i++;
 }

 return i;
}

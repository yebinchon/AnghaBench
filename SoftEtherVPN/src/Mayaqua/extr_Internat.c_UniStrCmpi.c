
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ wchar_t ;
typedef size_t UINT ;


 scalar_t__ UniToUpper (scalar_t__) ;

int UniStrCmpi(wchar_t *str1, wchar_t *str2)
{
 UINT i;

 if (str1 == ((void*)0) && str2 == ((void*)0))
 {
  return 0;
 }
 if (str1 == ((void*)0))
 {
  return 1;
 }
 if (str2 == ((void*)0))
 {
  return -1;
 }


 i = 0;
 while (1)
 {
  wchar_t c1, c2;
  c1 = UniToUpper(str1[i]);
  c2 = UniToUpper(str2[i]);
  if (c1 > c2)
  {
   return 1;
  }
  else if (c1 < c2)
  {
   return -1;
  }
  if (str1[i] == 0 || str2[i] == 0)
  {
   return 0;
  }
  i++;
 }
}

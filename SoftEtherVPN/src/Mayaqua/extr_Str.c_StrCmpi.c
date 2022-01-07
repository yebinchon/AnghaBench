
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UINT ;


 char ToUpper (char) ;

int StrCmpi(char *str1, char *str2)
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
  char c1, c2;
  c1 = ToUpper(str1[i]);
  c2 = ToUpper(str2[i]);
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

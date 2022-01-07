
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef size_t UINT ;


 int IsSafeUniChar (int) ;
 size_t UniStrLen (int*) ;

bool IsSafeUniStr(wchar_t *str)
{
 UINT i, len;

 if (str == ((void*)0))
 {
  return 0;
 }

 len = UniStrLen(str);
 for (i = 0;i < len;i++)
 {
  if (IsSafeUniChar(str[i]) == 0)
  {
   return 0;
  }
 }
 if (str[0] == L' ')
 {
  return 0;
 }
 if (len != 0)
 {
  if (str[len - 1] == L' ')
  {
   return 0;
  }
 }
 return 1;
}

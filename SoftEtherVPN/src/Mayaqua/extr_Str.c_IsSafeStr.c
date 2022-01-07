
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UINT ;


 int IsSafeChar (char) ;
 size_t StrLen (char*) ;

bool IsSafeStr(char *str)
{
 UINT i, len;

 if (str == ((void*)0))
 {
  return 0;
 }

 len = StrLen(str);
 for (i = 0;i < len;i++)
 {
  if (IsSafeChar(str[i]) == 0)
  {
   return 0;
  }
 }
 if (str[0] == ' ')
 {
  return 0;
 }
 if (len != 0)
 {
  if (str[len - 1] == ' ')
  {
   return 0;
  }
 }
 return 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UINT ;


 size_t StrLen (char*) ;

bool IsCharInStr(char *str, char c)
{
 UINT i, len;

 if (str == ((void*)0))
 {
  return 0;
 }

 len = StrLen(str);
 for (i = 0;i < len;i++)
 {
  if (str[i] == c)
  {
   return 1;
  }
 }

 return 0;
}

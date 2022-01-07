
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UINT ;


 size_t StrLen (char*) ;

bool IsAllUpperStr(char *str)
{
 UINT i, len;

 if (str == ((void*)0))
 {
  return 0;
 }

 len = StrLen(str);

 for (i = 0;i < len;i++)
 {
  char c = str[i];

  if ((c >= '0' && c <= '9') ||
   (c >= 'A' && c <= 'Z'))
  {
  }
  else
  {
   return 0;
  }
 }

 return 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UINT ;


 size_t StrLen (char*) ;

void Base64ToSafe64(char *str)
{
 UINT i, len;

 if (str == ((void*)0))
 {
  return;
 }

 len = StrLen(str);

 for (i = 0;i < len;i++)
 {
  switch (str[i])
  {
  case '=':
   str[i] = '(';
   break;

  case '+':
   str[i] = ')';
   break;

  case '/':
   str[i] = '_';
   break;
  }
 }
}

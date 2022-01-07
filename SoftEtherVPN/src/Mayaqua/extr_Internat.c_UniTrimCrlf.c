
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int UINT ;


 int UniStrLen (int*) ;

void UniTrimCrlf(wchar_t *str)
{
 UINT len;

 if (str == ((void*)0))
 {
  return;
 }
 len = UniStrLen(str);
 if (len == 0)
 {
  return;
 }

 if (str[len - 1] == L'\n')
 {
  if (len >= 2 && str[len - 2] == L'\r')
  {
   str[len - 2] = 0;
  }
  str[len - 1] = 0;
 }
 else if(str[len - 1] == L'\r')
 {
  str[len - 1] = 0;
 }
}

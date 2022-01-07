
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;


 int StrLen (char*) ;

void TrimCrlf(char *str)
{
 UINT len;

 if (str == ((void*)0))
 {
  return;
 }
 len = StrLen(str);
 if (len == 0)
 {
  return;
 }

 if (str[len - 1] == '\n')
 {
  if (len >= 2 && str[len - 2] == '\r')
  {
   str[len - 2] = 0;
  }
  str[len - 1] = 0;
 }
 else if (str[len - 1] == '\r')
 {
  str[len - 1] = 0;
 }
}

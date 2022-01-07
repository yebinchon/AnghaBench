
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;


 int Move (char*,char*,int) ;
 int StrLen (char*) ;

void TrimQuotes(char *str)
{
 UINT len = 0;

 if (str == ((void*)0))
 {
  return;
 }

 len = StrLen(str);
 if (len == 0)
 {
  return;
 }

 if (str[len - 1] == '\"')
 {
  str[len - 1] = 0;
 }

 if (str[0] == '\"')
 {
  Move(str, str + 1, len);
 }
}

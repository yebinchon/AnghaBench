
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UINT ;


 size_t StrLen (char*) ;
 char ToLower (char) ;

void StrLower(char *str)
{
 UINT len, i;

 if (str == ((void*)0))
 {
  return;
 }

 len = StrLen(str);
 for (i = 0;i < len;i++)
 {
  str[i] = ToLower(str[i]);
 }
}

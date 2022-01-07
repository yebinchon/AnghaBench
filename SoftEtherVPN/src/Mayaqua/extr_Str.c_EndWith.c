
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;


 scalar_t__ StrCmpi (char*,char*) ;
 scalar_t__ StrLen (char*) ;

bool EndWith(char *str, char *key)
{
 UINT str_len;
 UINT key_len;

 if (str == ((void*)0) || key == ((void*)0))
 {
  return 0;
 }


 str_len = StrLen(str);
 key_len = StrLen(key);
 if (str_len < key_len)
 {
  return 0;
 }

 if (StrCmpi(str + (str_len - key_len), key) == 0)
 {
  return 1;
 }
 else
 {
  return 0;
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;


 char* CopyStr (char*) ;
 int Free (char*) ;
 scalar_t__ StrCmpi (char*,char*) ;
 scalar_t__ StrLen (char*) ;

bool StartWith(char *str, char *key)
{
 UINT str_len;
 UINT key_len;
 char *tmp;
 bool ret;

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
 if (str_len == 0 || key_len == 0)
 {
  return 0;
 }
 tmp = CopyStr(str);
 tmp[key_len] = 0;

 if (StrCmpi(tmp, key) == 0)
 {
  ret = 1;
 }
 else
 {
  ret = 0;
 }

 Free(tmp);

 return ret;
}

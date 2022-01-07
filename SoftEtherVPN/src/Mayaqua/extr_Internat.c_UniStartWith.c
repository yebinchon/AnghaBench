
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ wchar_t ;
typedef scalar_t__ UINT ;


 scalar_t__* CopyUniStr (scalar_t__*) ;
 int Free (scalar_t__*) ;
 scalar_t__ UniStrCmpi (scalar_t__*,scalar_t__*) ;
 scalar_t__ UniStrLen (scalar_t__*) ;

bool UniStartWith(wchar_t *str, wchar_t *key)
{
 UINT str_len;
 UINT key_len;
 wchar_t *tmp;
 bool ret;

 if (str == ((void*)0) || key == ((void*)0))
 {
  return 0;
 }


 str_len = UniStrLen(str);
 key_len = UniStrLen(key);
 if (str_len < key_len)
 {
  return 0;
 }
 if (str_len == 0 || key_len == 0)
 {
  return 0;
 }
 tmp = CopyUniStr(str);
 tmp[key_len] = 0;

 if (UniStrCmpi(tmp, key) == 0)
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

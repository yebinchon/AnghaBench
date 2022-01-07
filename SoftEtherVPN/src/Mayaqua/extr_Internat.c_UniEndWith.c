
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef scalar_t__ UINT ;


 scalar_t__ UniStrCmpi (int *,int *) ;
 scalar_t__ UniStrLen (int *) ;

bool UniEndWith(wchar_t *str, wchar_t *key)
{
 UINT str_len;
 UINT key_len;

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

 if (UniStrCmpi(str + (str_len - key_len), key) == 0)
 {
  return 1;
 }
 else
 {
  return 0;
 }
}

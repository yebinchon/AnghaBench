
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;


 int ClearStr (char*,scalar_t__) ;
 scalar_t__ EndWith (char*,char*) ;
 int StrCpy (char*,scalar_t__,char*) ;
 scalar_t__ StrLen (char*) ;

bool TrimEndWith(char *dst, UINT dst_size, char *str, char *key)
{
 if (dst == ((void*)0) || str == ((void*)0))
 {
  ClearStr(dst, dst_size);
  return 0;
 }

 StrCpy(dst, dst_size, str);

 if (EndWith(str, key))
 {
  UINT src_len = StrLen(str);
  UINT key_len = StrLen(key);

  if (src_len >= key_len)
  {
   dst[src_len - key_len] = 0;
  }

  return 1;
 }

 return 0;
}

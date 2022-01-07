
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UINT ;


 int Free (char*) ;
 int IsSplitChar (char,char*) ;
 int StrCpy (char*,size_t,char*) ;
 size_t StrLen (char*) ;
 char* ZeroMalloc (size_t) ;
 char* default_spliter ;

bool GetKeyAndValue(char *str, char *key, UINT key_size, char *value, UINT value_size, char *split_str)
{
 UINT mode = 0;
 UINT wp1 = 0, wp2 = 0;
 UINT i, len;
 char *key_tmp, *value_tmp;
 bool ret = 0;
 if (split_str == ((void*)0))
 {
  split_str = default_spliter;
 }

 len = StrLen(str);

 key_tmp = ZeroMalloc(len + 1);
 value_tmp = ZeroMalloc(len + 1);

 for (i = 0;i < len;i++)
 {
  char c = str[i];

  switch (mode)
  {
  case 0:
   if (IsSplitChar(c, split_str) == 0)
   {
    mode = 1;
    key_tmp[wp1] = c;
    wp1++;
   }
   break;

  case 1:
   if (IsSplitChar(c, split_str) == 0)
   {
    key_tmp[wp1] = c;
    wp1++;
   }
   else
   {
    mode = 2;
   }
   break;

  case 2:
   if (IsSplitChar(c, split_str) == 0)
   {
    mode = 3;
    value_tmp[wp2] = c;
    wp2++;
   }
   break;

  case 3:
   value_tmp[wp2] = c;
   wp2++;
   break;
  }
 }

 if (mode != 0)
 {
  ret = 1;
  StrCpy(key, key_size, key_tmp);
  StrCpy(value, value_size, value_tmp);
 }

 Free(key_tmp);
 Free(value_tmp);

 return ret;
}

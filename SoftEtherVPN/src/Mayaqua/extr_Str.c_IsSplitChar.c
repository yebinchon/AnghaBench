
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UINT ;


 size_t StrLen (char*) ;
 char ToUpper (char) ;
 char* default_spliter ;

bool IsSplitChar(char c, char *split_str)
{
 UINT i, len;
 char c_upper = ToUpper(c);
 if (split_str == ((void*)0))
 {
  split_str = default_spliter;
 }

 len = StrLen(split_str);

 for (i = 0;i < len;i++)
 {
  if (ToUpper(split_str[i]) == c_upper)
  {
   return 1;
  }
 }

 return 0;
}

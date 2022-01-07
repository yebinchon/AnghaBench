
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;


 scalar_t__ INFINITE ;
 scalar_t__ SearchStrEx (char*,char*,scalar_t__,int) ;
 scalar_t__ StrLen (char*) ;

UINT CalcReplaceStrEx(char *string, char *old_keyword, char *new_keyword, bool case_sensitive)
{
 UINT i, num;
 UINT len_string, len_old, len_new;

 if (string == ((void*)0) || old_keyword == ((void*)0) || new_keyword == ((void*)0))
 {
  return 0;
 }


 len_string = StrLen(string);
 len_old = StrLen(old_keyword);
 len_new = StrLen(new_keyword);

 if (len_old == len_new)
 {
  return len_string;
 }


 num = 0;
 i = 0;
 while (1)
 {
  i = SearchStrEx(string, old_keyword, i, case_sensitive);
  if (i == INFINITE)
  {
   break;
  }
  i += len_old;
  num++;
 }


 return len_string + len_new * num - len_old * num;
}

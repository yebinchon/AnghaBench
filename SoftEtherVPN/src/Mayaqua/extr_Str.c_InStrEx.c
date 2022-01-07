
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ INFINITE ;
 scalar_t__ IsEmptyStr (char*) ;
 scalar_t__ SearchStrEx (char*,char*,int ,int) ;

bool InStrEx(char *str, char *keyword, bool case_sensitive)
{

 if (IsEmptyStr(str) || IsEmptyStr(keyword))
 {
  return 0;
 }

 if (SearchStrEx(str, keyword, 0, case_sensitive) == INFINITE)
 {
  return 0;
 }

 return 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char*,char*) ;

int StrCmp(char *str1, char *str2)
{

 if (str1 == ((void*)0) && str2 == ((void*)0))
 {
  return 0;
 }
 if (str1 == ((void*)0))
 {
  return 1;
 }
 if (str2 == ((void*)0))
 {
  return -1;
 }

 return strcmp(str1, str2);
}

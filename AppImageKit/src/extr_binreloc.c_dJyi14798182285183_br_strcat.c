
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ malloc (size_t) ;
 int memcpy (char*,char const*,size_t) ;
 size_t strlen (char const*) ;

char *
br_strcat (const char *str1, const char *str2)
{
 char *result;
 size_t len1, len2;

 if (str1 == ((void*)0))
  str1 = "";
 if (str2 == ((void*)0))
  str2 = "";

 len1 = strlen (str1);
 len2 = strlen (str2);

 result = (char *) malloc (len1 + len2 + 1);
 memcpy (result, str1, len1);
 memcpy (result + len1, str2, len2);
 result[len1 + len2] = '\0';

 return result;
}

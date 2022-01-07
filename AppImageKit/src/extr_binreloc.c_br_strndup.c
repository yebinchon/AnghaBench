
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ malloc (size_t) ;
 int memcpy (char*,char const*,size_t) ;
 char* strdup (char*) ;
 size_t strlen (char const*) ;

__attribute__((used)) static char *
br_strndup (const char *str, size_t size)
{
 char *result = (char *) ((void*)0);
 size_t len;

 if (str == (const char *) ((void*)0))
  return (char *) ((void*)0);

 len = strlen (str);
 if (len == 0)
  return strdup ("");
 if (size > len)
  size = len;

 result = (char *) malloc (len + 1);
 memcpy (result, str, size);
 result[size] = '\0';
 return result;
}

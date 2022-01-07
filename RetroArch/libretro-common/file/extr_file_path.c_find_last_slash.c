
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strrchr (char const*,char) ;

char *find_last_slash(const char *str)
{
   const char *slash = strrchr(str, '/');






   return (char*)slash;
}

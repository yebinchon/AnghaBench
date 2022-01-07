
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* strstr (char const*,char*) ;

bool path_is_absolute(const char *path)
{
   if (path[0] == '/')
      return 1;
   return 0;
}

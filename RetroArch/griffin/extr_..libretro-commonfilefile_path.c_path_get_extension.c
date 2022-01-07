
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int path_basename (char const*) ;
 int string_is_empty (char const*) ;
 char* strrchr (int ,char) ;

const char *path_get_extension(const char *path)
{
   const char *ext;
   if (!string_is_empty(path) && ((ext = strrchr(path_basename(path), '.'))))
      return ext + 1;
   return "";
}

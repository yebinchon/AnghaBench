
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int path_basename (char*) ;
 int string_is_empty (char*) ;
 scalar_t__ strrchr (int ,char) ;

char *path_remove_extension(char *path)
{
   char *last = !string_is_empty(path)
      ? (char*)strrchr(path_basename(path), '.') : ((void*)0);
   if (!last)
      return ((void*)0);
   if (*last)
      *last = '\0';
   return path;
}

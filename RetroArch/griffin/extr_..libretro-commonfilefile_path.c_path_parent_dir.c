
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int find_last_slash (char*) ;
 int path_basedir (char*) ;
 scalar_t__ path_char_is_slash (char) ;
 int path_is_absolute (char*) ;
 size_t strlen (char*) ;

void path_parent_dir(char *path)
{
   size_t len = 0;

   if (!path)
      return;

   len = strlen(path);

   if (len && path_char_is_slash(path[len - 1]))
   {
      bool path_was_absolute = path_is_absolute(path);

      path[len - 1] = '\0';

      if (path_was_absolute && !find_last_slash(path))
      {





         path[0] = '\0';
         return;
      }
   }
   path_basedir(path);
}

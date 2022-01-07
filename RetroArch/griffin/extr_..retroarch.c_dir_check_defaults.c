
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char** dirs; } ;


 unsigned int DEFAULT_DIR_LAST ;
 int PATH_MAX_LENGTH ;
 int fill_pathname_expand_special (char*,char const*,int) ;
 int free (char*) ;
 TYPE_1__ g_defaults ;
 scalar_t__ malloc (int) ;
 int path_is_directory (char*) ;
 scalar_t__ path_is_valid (char*) ;
 int path_mkdir (char*) ;
 scalar_t__ string_is_empty (char const*) ;

void dir_check_defaults(void)
{
   unsigned i;






   if (path_is_valid("custom.ini"))

      return;

   for (i = 0; i < DEFAULT_DIR_LAST; i++)
   {
      char *new_path = ((void*)0);
      const char *dir_path = g_defaults.dirs[i];

      if (string_is_empty(dir_path))
         continue;

      new_path = (char*)malloc(PATH_MAX_LENGTH * sizeof(char));

      if (!new_path)
         continue;

      new_path[0] = '\0';
      fill_pathname_expand_special(new_path,
            dir_path,
            PATH_MAX_LENGTH * sizeof(char));

      if (!path_is_directory(new_path))
         path_mkdir(new_path);

      free(new_path);
   }
}

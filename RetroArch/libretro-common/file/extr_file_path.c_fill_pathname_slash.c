
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* find_last_slash (char*) ;
 int path_default_slash () ;
 int strlcat (char*,int ,size_t) ;
 size_t strlen (char*) ;

void fill_pathname_slash(char *path, size_t size)
{
   size_t path_len;
   const char *last_slash = find_last_slash(path);

   if (!last_slash)
   {
      strlcat(path, path_default_slash(), size);
      return;
   }

   path_len = strlen(path);

   if (last_slash != (path + path_len - 1))
   {
      path[path_len] = last_slash[0];
      path[path_len+1] = '\0';
   }
}

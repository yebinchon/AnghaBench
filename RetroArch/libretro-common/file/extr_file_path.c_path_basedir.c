
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* find_last_slash (char*) ;
 char* path_default_slash () ;
 int snprintf (char*,int,char*,char*) ;
 int strlen (char*) ;

void path_basedir(char *path)
{
   char *last = ((void*)0);

   if (strlen(path) < 2)
      return;

   last = find_last_slash(path);

   if (last)
      last[1] = '\0';
   else
      snprintf(path, 3, ".%s", path_default_slash());
}

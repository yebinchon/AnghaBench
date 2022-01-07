
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* br_dirname (int *) ;
 int * exe ;
 char* strdup (char const*) ;

char *
br_find_exe_dir (const char *default_dir)
{
 if (exe == ((void*)0)) {

  if (default_dir != ((void*)0))
   return strdup (default_dir);
  else
   return ((void*)0);
 }

 return br_dirname (exe);
}

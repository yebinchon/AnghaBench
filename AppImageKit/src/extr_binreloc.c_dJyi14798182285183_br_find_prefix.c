
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* br_dirname (char*) ;
 char* exe ;
 int free (char*) ;
 char* strdup (char const*) ;

char *
br_find_prefix (const char *default_prefix)
{
 char *dir1, *dir2;

 if (exe == (char *) ((void*)0)) {

  if (default_prefix != (const char *) ((void*)0))
   return strdup (default_prefix);
  else
   return (char *) ((void*)0);
 }

 dir1 = br_dirname (exe);
 dir2 = br_dirname (dir1);
 free (dir1);
 return dir2;
}

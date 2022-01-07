
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* exe ;
 char* strdup (char const*) ;

char *
br_find_exe (const char *default_exe)
{
 if (exe == (char *) ((void*)0)) {

  if (default_exe != (const char *) ((void*)0))
   return strdup (default_exe);
  else
   return (char *) ((void*)0);
 }
 return strdup (exe);
}

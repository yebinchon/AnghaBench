
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* br_build_path (char*,char*) ;
 char* br_find_prefix (char const*) ;
 int free (char*) ;
 char* strdup (char const*) ;

char *
br_find_sbin_dir (const char *default_sbin_dir)
{
 char *prefix, *dir;

 prefix = br_find_prefix ((const char *) ((void*)0));
 if (prefix == (char *) ((void*)0)) {

  if (default_sbin_dir != (const char *) ((void*)0))
   return strdup (default_sbin_dir);
  else
   return (char *) ((void*)0);
 }

 dir = br_build_path (prefix, "sbin");
 free (prefix);
 return dir;
}

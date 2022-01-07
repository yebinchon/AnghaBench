
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* br_build_path (char*,char*) ;
 char* br_find_data_dir (char const*) ;
 int free (char*) ;
 char* strdup (char const*) ;

char *
br_find_locale_dir (const char *default_locale_dir)
{
 char *data_dir, *dir;

 data_dir = br_find_data_dir ((const char *) ((void*)0));
 if (data_dir == (char *) ((void*)0)) {

  if (default_locale_dir != (const char *) ((void*)0))
   return strdup (default_locale_dir);
  else
   return (char *) ((void*)0);
 }

 dir = br_build_path (data_dir, "locale");
 free (data_dir);
 return dir;
}

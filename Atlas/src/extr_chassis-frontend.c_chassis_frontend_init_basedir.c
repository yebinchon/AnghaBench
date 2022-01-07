
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int G_STRLOC ;
 char* chassis_get_basedir (char const*) ;
 int g_critical (char*,int ,...) ;
 int g_path_is_absolute (char*) ;

int chassis_frontend_init_basedir(const char *prg_name, char **_base_dir) {
 char *base_dir = *_base_dir;

 if (base_dir) {
  if (!g_path_is_absolute(base_dir)) {
   g_critical("%s: --basedir option must be an absolute path, but was %s",
     G_STRLOC,
     base_dir);
   return -1;
  } else {
   return 0;
  }
 }




 base_dir = chassis_get_basedir(prg_name);
 if (!base_dir) {
  g_critical("%s: Failed to get base directory",
    G_STRLOC);
  return -1;
 }

 *_base_dir = base_dir;

 return 0;

}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PICO_HOME_DIR ;
 char* getenv (char*) ;
 int mkdir (char*,int) ;
 int plat_get_data_dir (char*,int) ;
 int snprintf (char*,int,char*,char const*,int ) ;

int plat_get_root_dir(char *dst, int len)
{

 const char *home = getenv("HOME");
 int ret;

 if (home != ((void*)0)) {
  ret = snprintf(dst, len, "%s%s", home, PICO_HOME_DIR);
  if (ret >= len)
   ret = len - 1;
  mkdir(dst, 0755);
  return ret;
 }

 return plat_get_data_dir(dst, len);
}

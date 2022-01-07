
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_file_userdata {int conf; int * prefix; } ;
typedef int key ;


 int config_get_float (int ,char*,float*) ;
 int fill_pathname_join_delim (char*,int ,char const*,char,int) ;

int config_userdata_get_float(void *userdata, const char *key_str,
      float *value, float default_value)
{
   bool got;
   char key[2][256];
   struct config_file_userdata *usr = (struct config_file_userdata*)userdata;

   fill_pathname_join_delim(key[0], usr->prefix[0], key_str, '_', sizeof(key[0]));
   fill_pathname_join_delim(key[1], usr->prefix[1], key_str, '_', sizeof(key[1]));

   got = config_get_float (usr->conf, key[0], value);
   got = got || config_get_float(usr->conf, key[1], value);

   if (!got)
      *value = default_value;
   return got;
}

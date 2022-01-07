
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_file_userdata {int conf; int * prefix; } ;
typedef int key ;


 scalar_t__ config_get_string (int ,char*,char**) ;
 int fill_pathname_join_delim (char*,int ,char const*,char,int) ;
 char* strdup (char const*) ;

int config_userdata_get_string(void *userdata, const char *key_str,
      char **output, const char *default_output)
{
   char key[2][256];
   struct config_file_userdata *usr = (struct config_file_userdata*)userdata;
   char *str = ((void*)0);
   fill_pathname_join_delim(key[0], usr->prefix[0], key_str, '_', sizeof(key[0]));
   fill_pathname_join_delim(key[1], usr->prefix[1], key_str, '_', sizeof(key[1]));

   if ( config_get_string(usr->conf, key[0], &str) ||
         config_get_string(usr->conf, key[1], &str))
   {
      *output = str;
      return 1;
   }

   *output = strdup(default_output);
   return 0;
}

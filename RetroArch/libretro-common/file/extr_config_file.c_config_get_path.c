
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_entry_list {int value; } ;
typedef int config_file_t ;


 scalar_t__ config_get_array (int *,char const*,char*,size_t) ;
 struct config_entry_list* config_get_entry (int *,char const*,int *) ;
 int fill_pathname_expand_special (char*,int ,size_t) ;

bool config_get_path(config_file_t *conf, const char *key,
      char *buf, size_t size)
{

   if (config_get_array(conf, key, buf, size))
      return 1;
   return 0;
}

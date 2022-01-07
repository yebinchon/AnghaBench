
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_entry_list {int value; } ;
typedef int config_file_t ;


 struct config_entry_list* config_get_entry (int *,char const*,int *) ;
 size_t strlcpy (char*,int ,size_t) ;

bool config_get_array(config_file_t *conf, const char *key,
      char *buf, size_t size)
{
   const struct config_entry_list *entry = config_get_entry(conf, key, ((void*)0));

   if (entry)
      return strlcpy(buf, entry->value, size) < size;
   return 0;
}

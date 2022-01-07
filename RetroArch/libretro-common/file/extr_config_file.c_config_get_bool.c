
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_entry_list {int value; } ;
typedef int config_file_t ;


 struct config_entry_list* config_get_entry (int *,char const*,int *) ;
 scalar_t__ string_is_equal (int ,char*) ;

bool config_get_bool(config_file_t *conf, const char *key, bool *in)
{
   const struct config_entry_list *entry = config_get_entry(conf, key, ((void*)0));

   if (entry)
   {
      if (string_is_equal(entry->value, "true"))
         *in = 1;
      else if (string_is_equal(entry->value, "1"))
         *in = 1;
      else if (string_is_equal(entry->value, "false"))
         *in = 0;
      else if (string_is_equal(entry->value, "0"))
         *in = 0;
      else
         return 0;
   }

   return entry != ((void*)0);
}

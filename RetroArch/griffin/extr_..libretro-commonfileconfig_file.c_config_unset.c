
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct config_entry_list {int * value; int * key; } ;
struct TYPE_4__ {struct config_entry_list* entries; } ;
typedef TYPE_1__ config_file_t ;


 struct config_entry_list* config_get_entry (TYPE_1__*,char const*,struct config_entry_list**) ;
 int free (int *) ;

void config_unset(config_file_t *conf, const char *key)
{
   struct config_entry_list *last = conf->entries;
   struct config_entry_list *entry = config_get_entry(conf, key, &last);

   if (!entry)
      return;

   entry->key = ((void*)0);
   entry->value = ((void*)0);
   free(entry->key);
   free(entry->value);
}

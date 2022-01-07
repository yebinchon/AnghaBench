
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct config_entry_list {int readonly; struct config_entry_list* next; void* value; void* key; } ;
struct TYPE_4__ {struct config_entry_list* last; struct config_entry_list* entries; scalar_t__ guaranteed_no_duplicates; } ;
typedef TYPE_1__ config_file_t ;


 struct config_entry_list* config_get_entry (TYPE_1__*,char const*,struct config_entry_list**) ;
 int free (void*) ;
 scalar_t__ malloc (int) ;
 void* strdup (char const*) ;

void config_set_string(config_file_t *conf, const char *key, const char *val)
{
   struct config_entry_list *last = (conf->guaranteed_no_duplicates && conf->last) ? conf->last : conf->entries;
   struct config_entry_list *entry = conf->guaranteed_no_duplicates?((void*)0):config_get_entry(conf, key, &last);

   if (entry && !entry->readonly)
   {
      if (entry->value)
         free(entry->value);
      entry->value = strdup(val);
      return;
   }

   if (!val)
      return;

   entry = (struct config_entry_list*)malloc(sizeof(*entry));
   if (!entry)
      return;

   entry->readonly = 0;
   entry->key = strdup(key);
   entry->value = strdup(val);
   entry->next = ((void*)0);

   if (last)
      last->next = entry;
   else
      conf->entries = entry;

   conf->last = entry;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct config_entry_list {int key; struct config_entry_list* next; } ;
struct TYPE_3__ {struct config_entry_list* entries; } ;
typedef TYPE_1__ config_file_t ;


 scalar_t__ string_is_equal (char const*,int ) ;

__attribute__((used)) static struct config_entry_list *config_get_entry(
      const config_file_t *conf,
      const char *key, struct config_entry_list **prev)
{
   struct config_entry_list *entry = ((void*)0);
   struct config_entry_list *previous = prev ? *prev : ((void*)0);

   for (entry = conf->entries; entry; entry = entry->next)
   {
      if (string_is_equal(key, entry->key))
         return entry;

      previous = entry;
   }

   if (prev)
      *prev = previous;

   return ((void*)0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct config_file_entry {int next; int value; int key; } ;
struct config_entry_list {int next; int value; int key; } ;
struct TYPE_3__ {struct config_entry_list* entries; } ;
typedef TYPE_1__ config_file_t ;



bool config_get_entry_list_head(config_file_t *conf,
      struct config_file_entry *entry)
{
   const struct config_entry_list *head = conf->entries;

   if (!head)
      return 0;

   entry->key = head->key;
   entry->value = head->value;
   entry->next = head->next;
   return 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_file_entry {struct config_entry_list* next; int value; int key; } ;
struct config_entry_list {struct config_entry_list* next; int value; int key; } ;



bool config_get_entry_list_next(struct config_file_entry *entry)
{
   const struct config_entry_list *next = entry->next;

   if (!next)
      return 0;

   entry->key = next->key;
   entry->value = next->value;
   entry->next = next->next;
   return 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct config_entry_list {int readonly; struct config_entry_list* next; } ;
struct TYPE_4__ {struct config_entry_list* tail; struct config_entry_list* entries; } ;
typedef TYPE_1__ config_file_t ;



__attribute__((used)) static void add_child_list(config_file_t *parent, config_file_t *child)
{
   struct config_entry_list *list = child->entries;
   if (parent->entries)
   {
      struct config_entry_list *head = parent->entries;
      while (head->next)
         head = head->next;


      while (list)
      {
         list->readonly = 1;
         list = list->next;
      }
      head->next = child->entries;
   }
   else
   {

      while (list)
      {
         list->readonly = 1;
         list = list->next;
      }
      parent->entries = child->entries;
   }

   child->entries = ((void*)0);


   if (parent->entries)
   {
      struct config_entry_list *head =
         (struct config_entry_list*)parent->entries;

      while (head->next)
         head = head->next;
      parent->tail = head;
   }
   else
      parent->tail = ((void*)0);
}

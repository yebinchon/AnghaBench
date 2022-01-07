
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_entry_list {struct config_entry_list* next; } ;



__attribute__((used)) static struct config_entry_list* merge_sort_linked_list(
         struct config_entry_list *list, int (*compare)(
         struct config_entry_list *one,struct config_entry_list *two))
{
   struct config_entry_list
         *right = list,
         *temp = list,
         *last = list,
         *result = 0,
         *next = 0,
         *tail = 0;


   if (!list || !list->next)
      return list;



   while (temp && temp->next)
   {
      last = right;
      right = right->next;
      temp = temp->next->next;
   }



   last->next = 0;


   list = merge_sort_linked_list(list, compare);
   right = merge_sort_linked_list(right, compare);


   while (list || right)
   {

      if (!right)
      {
         next = list;
         list = list->next;
      }
      else if (!list)
      {
         next = right;
         right = right->next;
      }
      else if (compare(list, right) < 0)
      {
         next = list;
         list = list->next;
      }
      else
      {
         next = right;
         right = right->next;
      }

      if (!result)
         result = next;
      else
         tail->next = next;

      tail = next;
   }

   return result;
}

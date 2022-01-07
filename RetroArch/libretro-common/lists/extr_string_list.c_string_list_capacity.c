
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list_elem {int dummy; } ;
struct string_list {size_t cap; struct string_list_elem* elems; } ;


 int memset (struct string_list_elem*,int ,int) ;
 scalar_t__ realloc (struct string_list_elem*,size_t) ;

__attribute__((used)) static bool string_list_capacity(struct string_list *list, size_t cap)
{
   struct string_list_elem *new_data = (struct string_list_elem*)
      realloc(list->elems, cap * sizeof(*new_data));

   if (!new_data)
      return 0;

   if (cap > list->cap)
      memset(&new_data[list->cap], 0, sizeof(*new_data) * (cap - list->cap));

   list->elems = new_data;
   list->cap = cap;
   return 1;
}

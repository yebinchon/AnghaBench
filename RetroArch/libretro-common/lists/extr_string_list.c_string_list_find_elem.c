
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct string_list {size_t size; TYPE_1__* elems; } ;
struct TYPE_2__ {int data; } ;


 scalar_t__ string_is_equal_noncase (int ,char const*) ;

int string_list_find_elem(const struct string_list *list, const char *elem)
{
   size_t i;

   if (!list)
      return 0;

   for (i = 0; i < list->size; i++)
   {
      if (string_is_equal_noncase(list->elems[i].data, elem))
         return (int)(i + 1);
   }

   return 0;
}

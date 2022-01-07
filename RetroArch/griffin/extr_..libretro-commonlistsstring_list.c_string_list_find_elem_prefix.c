
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct string_list {size_t size; TYPE_1__* elems; } ;
typedef int prefixed ;
struct TYPE_2__ {int data; } ;


 scalar_t__ string_is_equal_noncase (int ,char const*) ;
 int strlcat (char*,char const*,int) ;
 int strlcpy (char*,char const*,int) ;

bool string_list_find_elem_prefix(const struct string_list *list,
      const char *prefix, const char *elem)
{
   size_t i;
   char prefixed[255];

   if (!list)
      return 0;

   prefixed[0] = '\0';

   strlcpy(prefixed, prefix, sizeof(prefixed));
   strlcat(prefixed, elem, sizeof(prefixed));

   for (i = 0; i < list->size; i++)
   {
      if (string_is_equal_noncase(list->elems[i].data, elem) ||
            string_is_equal_noncase(list->elems[i].data, prefixed))
         return 1;
   }

   return 0;
}

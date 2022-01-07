
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union string_list_elem_attr {int dummy; } string_list_elem_attr ;
struct string_list {int size; int cap; TYPE_1__* elems; } ;
struct TYPE_2__ {char* data; union string_list_elem_attr attr; } ;


 scalar_t__ malloc (unsigned int) ;
 int string_list_capacity (struct string_list*,int) ;
 int strlcpy (char*,char const*,unsigned int) ;

bool string_list_append_n(struct string_list *list, const char *elem,
      unsigned length, union string_list_elem_attr attr)
{
   char *data_dup = ((void*)0);

   if (list->size >= list->cap &&
         !string_list_capacity(list, list->cap * 2))
      return 0;

   data_dup = (char*)malloc(length + 1);

   if (!data_dup)
      return 0;

   strlcpy(data_dup, elem, length + 1);

   list->elems[list->size].data = data_dup;
   list->elems[list->size].attr = attr;

   list->size++;
   return 1;
}

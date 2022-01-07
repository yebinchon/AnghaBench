
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {int dummy; } ;


 scalar_t__ calloc (int,int) ;
 int string_list_capacity (struct string_list*,int) ;
 int string_list_free (struct string_list*) ;

struct string_list *string_list_new(void)
{
   struct string_list *list = (struct string_list*)
      calloc(1, sizeof(*list));

   if (!list)
      return ((void*)0);

   if (!string_list_capacity(list, 32))
   {
      string_list_free(list);
      return ((void*)0);
   }

   return list;
}

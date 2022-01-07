
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {size_t size; struct string_list* elems; struct string_list* userdata; struct string_list* data; } ;


 int free (struct string_list*) ;

void string_list_free(struct string_list *list)
{
   size_t i;
   if (!list)
      return;

   if (list->elems)
   {
      for (i = 0; i < list->size; i++)
      {
         if (list->elems[i].data)
            free(list->elems[i].data);
         if (list->elems[i].userdata)
            free(list->elems[i].userdata);
         list->elems[i].data = ((void*)0);
         list->elems[i].userdata = ((void*)0);
      }

      free(list->elems);
   }

   list->elems = ((void*)0);
   free(list);
}

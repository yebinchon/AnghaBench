
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {size_t size; TYPE_1__* list; } ;
typedef TYPE_2__ file_list_t ;
struct TYPE_4__ {int * alt; int * label; int * path; } ;


 int free (int *) ;

void file_list_clear(file_list_t *list)
{
   size_t i;

   if (!list)
      return;

   for (i = 0; i < list->size; i++)
   {
      if (list->list[i].path)
         free(list->list[i].path);
      list->list[i].path = ((void*)0);

      if (list->list[i].label)
         free(list->list[i].label);
      list->list[i].label = ((void*)0);

      if (list->list[i].alt)
         free(list->list[i].alt);
      list->list[i].alt = ((void*)0);
   }

   list->size = 0;
}

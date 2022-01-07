
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {size_t size; TYPE_1__* list; } ;
typedef TYPE_2__ file_list_t ;
struct TYPE_4__ {size_t directory_ptr; int * label; int * path; } ;


 int free (int *) ;

void file_list_pop(file_list_t *list, size_t *directory_ptr)
{
   if (!list)
      return;

   if (list->size != 0)
   {
      --list->size;
      if (list->list[list->size].path)
         free(list->list[list->size].path);
      list->list[list->size].path = ((void*)0);

      if (list->list[list->size].label)
         free(list->list[list->size].label);
      list->list[list->size].label = ((void*)0);
   }

   if (directory_ptr)
      *directory_ptr = list->list[list->size].directory_ptr;
}

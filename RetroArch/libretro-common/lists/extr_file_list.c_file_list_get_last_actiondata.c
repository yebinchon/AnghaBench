
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int size; TYPE_1__* list; } ;
typedef TYPE_2__ file_list_t ;
struct TYPE_4__ {void* actiondata; } ;



void *file_list_get_last_actiondata(const file_list_t *list)
{
   if (!list)
      return ((void*)0);
   return list->list[list->size - 1].actiondata;
}

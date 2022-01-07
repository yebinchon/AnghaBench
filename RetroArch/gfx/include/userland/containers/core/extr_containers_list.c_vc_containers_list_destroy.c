
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* entries; scalar_t__ capacity; } ;
typedef TYPE_1__ VC_CONTAINERS_LIST_T ;


 int free (TYPE_1__*) ;

void vc_containers_list_destroy(VC_CONTAINERS_LIST_T *list)
{

   if (list && list->capacity)
   {
      if (list->entries)
         free(list->entries);
      free(list);
   }
}

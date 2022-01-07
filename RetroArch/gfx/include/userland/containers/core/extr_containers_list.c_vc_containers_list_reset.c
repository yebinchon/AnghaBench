
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ size; scalar_t__ capacity; } ;
typedef TYPE_1__ VC_CONTAINERS_LIST_T ;



void vc_containers_list_reset(VC_CONTAINERS_LIST_T *list)
{

   if (list && list->capacity)
      list->size = 0;
}

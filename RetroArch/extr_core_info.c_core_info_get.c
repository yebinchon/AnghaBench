
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int path; } ;
typedef TYPE_1__ core_info_t ;
struct TYPE_6__ {int * list; } ;
typedef TYPE_2__ core_info_list_t ;



core_info_t *core_info_get(core_info_list_t *list, size_t i)
{
   core_info_t *info = ((void*)0);

   if (!list)
      return ((void*)0);
   info = (core_info_t*)&list->list[i];
   if (!info || !info->path)
      return ((void*)0);

   return info;
}

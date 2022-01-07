
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* list; } ;
typedef TYPE_2__ file_list_t ;
struct TYPE_4__ {void* userdata; } ;



void *file_list_get_userdata_at_offset(const file_list_t *list, size_t idx)
{
   if (!list)
      return ((void*)0);
   return list->list[idx].userdata;
}

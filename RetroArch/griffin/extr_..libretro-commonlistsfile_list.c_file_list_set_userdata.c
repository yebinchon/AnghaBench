
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* list; } ;
typedef TYPE_2__ file_list_t ;
struct TYPE_4__ {void* userdata; } ;



void file_list_set_userdata(const file_list_t *list, size_t idx, void *ptr)
{
   if (list && ptr)
      list->list[idx].userdata = ptr;
}

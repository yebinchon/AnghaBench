
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t size; } ;
typedef TYPE_1__ file_list_t ;



size_t file_list_get_size(const file_list_t *list)
{
   if (!list)
      return 0;
   return list->size;
}

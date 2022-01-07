
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vm_size_t ;
typedef TYPE_1__* vm_map_t ;
struct TYPE_3__ {int user_wire_limit; } ;



void
vm_map_set_user_wire_limit(vm_map_t map,
      vm_size_t limit)
{
 map->user_wire_limit = limit;
}

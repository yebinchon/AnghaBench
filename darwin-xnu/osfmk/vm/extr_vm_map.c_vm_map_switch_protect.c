
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* vm_map_t ;
typedef int boolean_t ;
struct TYPE_5__ {int switch_protect; } ;


 int vm_map_lock (TYPE_1__*) ;
 int vm_map_unlock (TYPE_1__*) ;

void vm_map_switch_protect(vm_map_t map,
      boolean_t val)
{
 vm_map_lock(map);
 map->switch_protect=val;
 vm_map_unlock(map);
}

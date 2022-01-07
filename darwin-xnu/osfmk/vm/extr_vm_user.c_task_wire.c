
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* vm_map_t ;
typedef int kern_return_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_6__ {int wiring_required; } ;


 int KERN_INVALID_ARGUMENT ;
 int KERN_SUCCESS ;
 scalar_t__ TRUE ;
 TYPE_1__* VM_MAP_NULL ;
 int vm_map_lock (TYPE_1__*) ;
 int vm_map_unlock (TYPE_1__*) ;

kern_return_t
task_wire(
 vm_map_t map,
 boolean_t must_wire)
{
 if (map == VM_MAP_NULL)
  return(KERN_INVALID_ARGUMENT);

 vm_map_lock(map);
 map->wiring_required = (must_wire == TRUE);
 vm_map_unlock(map);

 return(KERN_SUCCESS);
}

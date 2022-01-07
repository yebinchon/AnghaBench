
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* vm_map_t ;
typedef int kern_return_t ;
struct TYPE_6__ {int map_disallow_new_exec; } ;


 int KERN_INVALID_ARGUMENT ;
 int KERN_SUCCESS ;
 int TRUE ;
 TYPE_1__* VM_MAP_NULL ;
 int vm_map_lock (TYPE_1__*) ;
 int vm_map_unlock (TYPE_1__*) ;

kern_return_t
vm_map_exec_lockdown(
 vm_map_t map)
{
 if (map == VM_MAP_NULL)
  return(KERN_INVALID_ARGUMENT);

 vm_map_lock(map);
 map->map_disallow_new_exec = TRUE;
 vm_map_unlock(map);

 return(KERN_SUCCESS);
}

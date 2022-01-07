
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* vm_map_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_4__ {scalar_t__ pmap; int map_disallow_data_exec; } ;


 int FALSE ;
 int VM_ABI_32 ;
 int VM_ABI_64 ;
 scalar_t__ VM_MEMORY_STACK ;
 int allow_data_exec ;
 int allow_stack_exec ;
 scalar_t__ kernel_pmap ;
 scalar_t__ vm_map_is_64bit (TYPE_1__*) ;

int
override_nx(vm_map_t map, uint32_t user_tag)
{
 int current_abi;

 if (map->pmap == kernel_pmap) return FALSE;





 if (vm_map_is_64bit(map))
  current_abi = VM_ABI_64;
 else
  current_abi = VM_ABI_32;






 if (user_tag == VM_MEMORY_STACK)
  return allow_stack_exec & current_abi;

 return (allow_data_exec & current_abi) && (map->map_disallow_data_exec == FALSE);
}

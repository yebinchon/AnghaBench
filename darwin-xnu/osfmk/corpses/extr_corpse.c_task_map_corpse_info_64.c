
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* task_t ;
typedef int mach_vm_size_t ;
typedef int mach_vm_offset_t ;
typedef int mach_vm_address_t ;
typedef scalar_t__ kern_return_t ;
struct TYPE_7__ {int map; int corpse_info; } ;


 int CORPSEINFO_ALLOCATION_SIZE ;
 scalar_t__ KERN_INVALID_ARGUMENT ;
 scalar_t__ KERN_SUCCESS ;
 TYPE_1__* TASK_NULL ;
 int VM_FLAGS_ANYWHERE ;
 int VM_MEMORY_CORPSEINFO ;
 int copyout (void*,int ,int ) ;
 int * kcdata_memory_get_begin_addr (int ) ;
 scalar_t__ mach_vm_allocate_kernel (int ,int *,int ,int ,int ) ;
 int task_is_a_corpse (TYPE_1__*) ;
 scalar_t__ task_is_a_corpse_fork (TYPE_1__*) ;

kern_return_t
task_map_corpse_info_64(
 task_t task,
 task_t corpse_task,
 mach_vm_address_t *kcd_addr_begin,
 mach_vm_size_t *kcd_size)
{
 kern_return_t kr;
 mach_vm_offset_t crash_data_ptr = 0;
 mach_vm_size_t size = CORPSEINFO_ALLOCATION_SIZE;
 void *corpse_info_kernel = ((void*)0);

 if (task == TASK_NULL || task_is_a_corpse_fork(task)) {
  return KERN_INVALID_ARGUMENT;
 }

 if (corpse_task == TASK_NULL || !task_is_a_corpse(corpse_task) ||
     kcdata_memory_get_begin_addr(corpse_task->corpse_info) == ((void*)0)) {
  return KERN_INVALID_ARGUMENT;
 }
 corpse_info_kernel = kcdata_memory_get_begin_addr(corpse_task->corpse_info);
 kr = mach_vm_allocate_kernel(task->map, &crash_data_ptr, size,
   VM_FLAGS_ANYWHERE, VM_MEMORY_CORPSEINFO);
 if (kr != KERN_SUCCESS) {
  return kr;
 }
 copyout(corpse_info_kernel, crash_data_ptr, size);
 *kcd_addr_begin = crash_data_ptr;
 *kcd_size = size;

 return KERN_SUCCESS;
}

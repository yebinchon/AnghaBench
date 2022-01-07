
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* vm_map_t ;
typedef void* task_t ;
typedef int kern_return_t ;
typedef int cpu_type_t ;
typedef int cpu_subtype_t ;
typedef int boolean_t ;


 int KERN_SUCCESS ;
 int SHARED_REGION_TRACE_DEBUG (char*) ;
 scalar_t__ VM_KERNEL_ADDRPERM (void*) ;
 void* current_task () ;
 int vm_commpage_enter (void*,void*,int ) ;
 int vm_shared_region_enter (void*,void*,int ,void*,int ,int ) ;

kern_return_t
vm_map_exec(
 vm_map_t new_map,
 task_t task,
 boolean_t is64bit,
 void *fsroot,
 cpu_type_t cpu,
 cpu_subtype_t cpu_subtype)
{
 SHARED_REGION_TRACE_DEBUG(
  ("shared_region: task %p: vm_map_exec(%p,%p,%p,0x%x,0x%x): ->\n",
   (void *)VM_KERNEL_ADDRPERM(current_task()),
   (void *)VM_KERNEL_ADDRPERM(new_map),
   (void *)VM_KERNEL_ADDRPERM(task),
   (void *)VM_KERNEL_ADDRPERM(fsroot),
   cpu,
   cpu_subtype));
 (void) vm_commpage_enter(new_map, task, is64bit);
 (void) vm_shared_region_enter(new_map, task, is64bit, fsroot, cpu, cpu_subtype);
 SHARED_REGION_TRACE_DEBUG(
  ("shared_region: task %p: vm_map_exec(%p,%p,%p,0x%x,0x%x): <-\n",
   (void *)VM_KERNEL_ADDRPERM(current_task()),
   (void *)VM_KERNEL_ADDRPERM(new_map),
   (void *)VM_KERNEL_ADDRPERM(task),
   (void *)VM_KERNEL_ADDRPERM(fsroot),
   cpu,
   cpu_subtype));
 return KERN_SUCCESS;
}

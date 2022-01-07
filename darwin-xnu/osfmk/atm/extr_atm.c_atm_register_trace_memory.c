
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int vm_map_t ;
typedef int uint64_t ;
typedef TYPE_1__* task_t ;
typedef int memory_object_size_t ;
typedef int mach_vm_offset_t ;
typedef int mach_port_t ;
typedef scalar_t__ kern_return_t ;
typedef int * atm_task_descriptor_t ;
struct TYPE_7__ {int * atm_context; } ;


 int * ATM_TASK_DESCRIPTOR_NULL ;
 int ATM_TRACE_DISABLE ;
 scalar_t__ KERN_FAILURE ;
 scalar_t__ KERN_INVALID_ARGUMENT ;
 scalar_t__ KERN_NOT_SUPPORTED ;
 scalar_t__ KERN_NO_SPACE ;
 scalar_t__ KERN_SUCCESS ;
 int MACH_PORT_NULL ;
 int MAX_TRACE_BUFFER_SIZE ;
 int PAGE_MASK ;
 int VM_PROT_READ ;
 int atm_get_diagnostic_config () ;
 int * atm_task_descriptor_alloc_init (int ,int,TYPE_1__*) ;
 int atm_task_descriptor_dealloc (int *) ;
 int current_map () ;
 TYPE_1__* current_task () ;
 scalar_t__ disable_atm ;
 int ipc_port_release_send (int ) ;
 scalar_t__ mach_make_memory_entry_64 (int ,int *,int ,int ,int *,int *) ;
 int task_lock (TYPE_1__*) ;
 int task_unlock (TYPE_1__*) ;

kern_return_t
atm_register_trace_memory(
 task_t task,
 uint64_t trace_buffer_address,
 uint64_t buffer_size)
{
 atm_task_descriptor_t task_descriptor;
 mach_port_t trace_buffer = MACH_PORT_NULL;
 kern_return_t kr = KERN_SUCCESS;

 if (disable_atm || (atm_get_diagnostic_config() & ATM_TRACE_DISABLE))
  return KERN_NOT_SUPPORTED;

 if (task != current_task())
  return KERN_INVALID_ARGUMENT;

 if (task->atm_context != ((void*)0)
     || (void *)trace_buffer_address == ((void*)0)
     || buffer_size == 0
     || (buffer_size & PAGE_MASK) != 0
     || buffer_size > MAX_TRACE_BUFFER_SIZE) {
  return KERN_INVALID_ARGUMENT;
 }

 vm_map_t map = current_map();
 memory_object_size_t mo_size = (memory_object_size_t) buffer_size;
 kr = mach_make_memory_entry_64(map,
                            &mo_size,
                            (mach_vm_offset_t)trace_buffer_address,
                            VM_PROT_READ,
                            &trace_buffer,
                            ((void*)0));
 if (kr != KERN_SUCCESS)
  return kr;

 task_descriptor = atm_task_descriptor_alloc_init(trace_buffer, buffer_size, task);
 if (task_descriptor == ATM_TASK_DESCRIPTOR_NULL) {
  ipc_port_release_send(trace_buffer);
  return KERN_NO_SPACE;
 }

 task_lock(task);
 if (task->atm_context == ((void*)0)) {
  task->atm_context = task_descriptor;
  kr = KERN_SUCCESS;
 } else {
  kr = KERN_FAILURE;
 }
 task_unlock(task);

 if (kr != KERN_SUCCESS) {

  atm_task_descriptor_dealloc(task_descriptor);
 }
 return KERN_SUCCESS;
}

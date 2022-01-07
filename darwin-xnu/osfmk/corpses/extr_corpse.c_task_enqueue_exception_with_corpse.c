
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ thread_t ;
typedef scalar_t__ task_t ;
typedef int mach_msg_type_number_t ;
typedef int * mach_exception_data_t ;
typedef scalar_t__ kern_return_t ;
typedef int exception_type_t ;


 int EXC_GUARD ;
 int EXC_RESOURCE ;
 scalar_t__ KERN_FAILURE ;
 scalar_t__ KERN_INVALID_ARGUMENT ;
 scalar_t__ KERN_SUCCESS ;
 scalar_t__ TASK_NULL ;
 scalar_t__ THREAD_NULL ;
 int assert (int) ;
 scalar_t__ task_generate_corpse_internal (scalar_t__,scalar_t__*,scalar_t__*,int ,int ,int ,void*) ;
 int thread_exception_enqueue (scalar_t__,scalar_t__,int ) ;

kern_return_t
task_enqueue_exception_with_corpse(
 task_t task,
 exception_type_t etype,
 mach_exception_data_t code,
 mach_msg_type_number_t codeCnt,
 void *reason)
{
 task_t new_task = TASK_NULL;
 thread_t thread = THREAD_NULL;
 kern_return_t kr;

 if (codeCnt < 2) {
  return KERN_INVALID_ARGUMENT;
 }


 kr = task_generate_corpse_internal(task, &new_task, &thread,
   etype, code[0], code[1], reason);
 if (kr == KERN_SUCCESS) {
  if (thread == THREAD_NULL) {
   return KERN_FAILURE;
  }
  assert(new_task != TASK_NULL);
  assert(etype == EXC_RESOURCE || etype == EXC_GUARD);
  thread_exception_enqueue(new_task, thread, etype);
 }
 return kr;
}

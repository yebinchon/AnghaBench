
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
typedef TYPE_1__* thread_t ;
typedef TYPE_2__* task_t ;
typedef int mach_exception_data_type_t ;
struct TYPE_8__ {int task_exc_guard; } ;
struct TYPE_7__ {TYPE_2__* task; } ;


 int EXC_GUARD ;
 scalar_t__ OSCompareAndSwap (int,int,int*) ;
 int TASK_EXC_GUARD_VM_CORPSE ;
 int TASK_EXC_GUARD_VM_DELIVER ;
 int TASK_EXC_GUARD_VM_FATAL ;
 int TASK_EXC_GUARD_VM_ONCE ;
 int assert (int) ;
 TYPE_2__* current_task () ;
 TYPE_2__* kernel_task ;
 int task_bsdtask_kill (TYPE_2__*) ;
 int task_exception_notify (int ,int ,int ) ;
 int task_violated_guard (int ,int ,int *) ;

void
virt_memory_guard_ast(
 thread_t thread,
 mach_exception_data_type_t code,
 mach_exception_data_type_t subcode)
{
 task_t task = thread->task;
 assert(task != kernel_task);
 assert(task == current_task());
 uint32_t behavior;

 behavior = task->task_exc_guard;


 if ((behavior & TASK_EXC_GUARD_VM_DELIVER) == 0) {
  return;
 }


 while (behavior & TASK_EXC_GUARD_VM_ONCE) {
  uint32_t new_behavior = behavior & ~TASK_EXC_GUARD_VM_DELIVER;

  if (OSCompareAndSwap(behavior, new_behavior, &task->task_exc_guard)) {
   break;
  }
  behavior = task->task_exc_guard;
  if ((behavior & TASK_EXC_GUARD_VM_DELIVER) == 0) {
   return;
  }
 }


 if ((task->task_exc_guard & TASK_EXC_GUARD_VM_CORPSE) &&
     (task->task_exc_guard & TASK_EXC_GUARD_VM_FATAL) == 0) {
  task_violated_guard(code, subcode, ((void*)0));
 } else {
  task_exception_notify(EXC_GUARD, code, subcode);
 }


 if (task->task_exc_guard & TASK_EXC_GUARD_VM_FATAL) {
  task_bsdtask_kill(current_task());
 }
}

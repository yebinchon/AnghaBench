
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef unsigned int uint32_t ;
typedef TYPE_1__* thread_t ;
typedef TYPE_2__* task_t ;
typedef int mach_exception_data_type_t ;
struct TYPE_8__ {unsigned int task_exc_guard; } ;
struct TYPE_7__ {TYPE_2__* task; } ;


 int EXC_GUARD ;
 unsigned int EXC_GUARD_DECODE_GUARD_FLAVOR (int ) ;
 int OSCompareAndSwap (unsigned int,unsigned int,unsigned int*) ;
 int TASK_EXC_GUARD_MP_CORPSE ;
 unsigned int TASK_EXC_GUARD_MP_DELIVER ;
 int TASK_EXC_GUARD_MP_FATAL ;
 unsigned int TASK_EXC_GUARD_MP_ONCE ;
 int assert (int) ;
 TYPE_2__* current_task () ;





 TYPE_2__* kernel_task ;
 int task_bsdtask_kill (TYPE_2__*) ;
 int task_exception_notify (int ,int ,int ) ;
 int task_violated_guard (int ,int ,int *) ;

void
mach_port_guard_ast(thread_t t,
 mach_exception_data_type_t code, mach_exception_data_type_t subcode)
{
 unsigned int reason = EXC_GUARD_DECODE_GUARD_FLAVOR(code);
 task_t task = t->task;
 unsigned int behavior = task->task_exc_guard;
 assert(task == current_task());
 assert(task != kernel_task);

 switch (reason) {



 case 132:
 case 130:
 case 129:
 case 128:
 case 131:
  task_exception_notify(EXC_GUARD, code, subcode);
  task_bsdtask_kill(task);
  break;

 default:





  if ((behavior & TASK_EXC_GUARD_MP_DELIVER) == 0) {
   return;
  }


  while (behavior & TASK_EXC_GUARD_MP_ONCE) {
   uint32_t new_behavior = behavior & ~TASK_EXC_GUARD_MP_DELIVER;

   if (OSCompareAndSwap(behavior, new_behavior, &task->task_exc_guard)) {
    break;
   }
   behavior = task->task_exc_guard;
   if ((behavior & TASK_EXC_GUARD_MP_DELIVER) == 0) {
    return;
   }
  }


  if ((task->task_exc_guard & TASK_EXC_GUARD_MP_CORPSE) &&
      (task->task_exc_guard & TASK_EXC_GUARD_MP_FATAL) == 0) {
   task_violated_guard(code, subcode, ((void*)0));
  } else {
   task_exception_notify(EXC_GUARD, code, subcode);
  }


  if (task->task_exc_guard & TASK_EXC_GUARD_MP_FATAL) {
   task_bsdtask_kill(task);
  }
  break;
 }
}

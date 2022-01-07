
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ vm_offset_t ;
typedef TYPE_1__* thread_t ;
struct TYPE_4__ {scalar_t__ kernel_stack; int sched_pri; int priority; } ;


 int DBG_MACH_SCHED ;
 int KERNEL_DEBUG (int ,uintptr_t,int ,int ,int ,int ) ;
 int MACHDBG_CODE (int ,int ) ;
 int MACH_STACK_DETACH ;
 scalar_t__ thread_tid (TYPE_1__*) ;

vm_offset_t
machine_stack_detach(thread_t thread)
{
 vm_offset_t stack;

 KERNEL_DEBUG(MACHDBG_CODE(DBG_MACH_SCHED, MACH_STACK_DETACH),
       (uintptr_t)thread_tid(thread), thread->priority,
       thread->sched_pri, 0,
       0);

 stack = thread->kernel_stack;
 thread->kernel_stack = 0;

 return (stack);
}

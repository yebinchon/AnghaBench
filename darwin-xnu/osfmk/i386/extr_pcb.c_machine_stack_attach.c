
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int vm_offset_t ;
typedef TYPE_1__* thread_t ;
struct x86_kernel_state {unsigned long k_rip; unsigned long k_rbx; unsigned long k_rsp; unsigned long k_eip; unsigned long k_ebx; unsigned long k_esp; } ;
struct TYPE_5__ {int kernel_stack; int sched_pri; int priority; } ;


 int DBG_MACH_SCHED ;
 int KERNEL_DEBUG (int ,uintptr_t,int ,int ,int ,int ) ;
 int MACHDBG_CODE (int ,int ) ;
 int MACH_STACK_ATTACH ;
 struct x86_kernel_state* STACK_IKS (int ) ;
 scalar_t__ Thread_continue ;
 int assert (int ) ;
 scalar_t__ thread_continue ;
 int thread_initialize_kernel_state (TYPE_1__*) ;
 scalar_t__ thread_tid (TYPE_1__*) ;

void
machine_stack_attach(
 thread_t thread,
 vm_offset_t stack)
{
 struct x86_kernel_state *statep;

 KERNEL_DEBUG(MACHDBG_CODE(DBG_MACH_SCHED, MACH_STACK_ATTACH),
       (uintptr_t)thread_tid(thread), thread->priority,
       thread->sched_pri, 0, 0);

 assert(stack);
 thread->kernel_stack = stack;
 thread_initialize_kernel_state(thread);

 statep = STACK_IKS(stack);

 statep->k_rip = (unsigned long) Thread_continue;
 statep->k_rbx = (unsigned long) thread_continue;
 statep->k_rsp = (unsigned long) STACK_IKS(stack);






 return;
}

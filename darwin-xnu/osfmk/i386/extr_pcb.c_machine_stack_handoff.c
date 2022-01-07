
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef scalar_t__ vm_offset_t ;
typedef TYPE_2__* thread_t ;
struct TYPE_17__ {int specFlags; } ;
struct TYPE_18__ {scalar_t__ kernel_stack; scalar_t__ reserved_stack; TYPE_1__ machine; } ;


 int OnProc ;
 int act_machine_switch_pcb (TYPE_2__*,TYPE_2__*) ;
 int assert (TYPE_2__*) ;
 int cpu_number () ;
 int fpu_switch_context (TYPE_2__*,TYPE_2__*) ;
 int kpc_off_cpu (TYPE_2__*) ;
 int machine_set_current_thread (TYPE_2__*) ;
 int ml_hv_cswitch (TYPE_2__*,TYPE_2__*) ;
 int pmap_switch_context (TYPE_2__*,TYPE_2__*,int ) ;
 int thread_initialize_kernel_state (TYPE_2__*) ;

void
machine_stack_handoff(thread_t old,
       thread_t new)
{
 vm_offset_t stack;

 assert(new);
 assert(old);

 kpc_off_cpu(old);

 stack = old->kernel_stack;
 if (stack == old->reserved_stack) {
  assert(new->reserved_stack);
  old->reserved_stack = new->reserved_stack;
  new->reserved_stack = stack;
 }
 old->kernel_stack = 0;




 new->kernel_stack = stack;

 fpu_switch_context(old, new);

 old->machine.specFlags &= ~OnProc;
 new->machine.specFlags |= OnProc;

 pmap_switch_context(old, new, cpu_number());
 act_machine_switch_pcb(old, new);





 machine_set_current_thread(new);
 thread_initialize_kernel_state(new);

 return;
}

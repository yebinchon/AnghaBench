
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_13__ ;


typedef scalar_t__ vm_offset_t ;
typedef TYPE_2__* thread_t ;
typedef int thread_continue_t ;
struct TYPE_20__ {int specFlags; } ;
struct TYPE_21__ {scalar_t__ kernel_stack; TYPE_1__ machine; } ;
struct TYPE_19__ {scalar_t__ cpu_active_stack; } ;


 int DBG_MACH_SCHED ;
 int KERNEL_DEBUG_CONSTANT (int ,long,int ,int ,int ,int ) ;
 int MACHDBG_CODE (int ,int ) ;
 int MACH_STACK_DEPTH ;
 int OnProc ;
 TYPE_2__* Switch_context (TYPE_2__*,int ,TYPE_2__*) ;
 int act_machine_switch_pcb (TYPE_2__*,TYPE_2__*) ;
 int assert (int) ;
 int cpu_number () ;
 TYPE_13__* current_cpu_datap () ;
 scalar_t__ current_stack_depth () ;
 int fpu_switch_context (TYPE_2__*,TYPE_2__*) ;
 scalar_t__ kernel_stack_depth_max ;
 int kpc_off_cpu (TYPE_2__*) ;
 int ml_hv_cswitch (TYPE_2__*,TYPE_2__*) ;
 int pmap_switch_context (TYPE_2__*,TYPE_2__*,int ) ;

thread_t
machine_switch_context(
 thread_t old,
 thread_continue_t continuation,
 thread_t new)
{
 assert(current_cpu_datap()->cpu_active_stack == old->kernel_stack);
 fpu_switch_context(old, new);

 old->machine.specFlags &= ~OnProc;
 new->machine.specFlags |= OnProc;





 vm_offset_t depth = current_stack_depth();
 if (depth > kernel_stack_depth_max) {
  kernel_stack_depth_max = depth;
  KERNEL_DEBUG_CONSTANT(
   MACHDBG_CODE(DBG_MACH_SCHED, MACH_STACK_DEPTH),
   (long) depth, 0, 0, 0, 0);
 }





 pmap_switch_context(old, new, cpu_number());




 act_machine_switch_pcb(old, new);





 return(Switch_context(old, continuation, new));
}

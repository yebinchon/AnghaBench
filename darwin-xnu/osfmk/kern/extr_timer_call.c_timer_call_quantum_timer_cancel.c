
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* timer_call_t ;
typedef int boolean_t ;
struct TYPE_7__ {int param0; int func; scalar_t__ entry_time; scalar_t__ deadline; } ;
struct TYPE_6__ {int ttd; scalar_t__ flags; } ;


 int DBG_FUNC_END ;
 int DBG_FUNC_START ;
 int DECR_TIMER_CANCEL ;
 int DTRACE_TMR6 (int ,int ,int ,int ,int ,int ,scalar_t__,int ,int,unsigned int) ;
 scalar_t__ FALSE ;
 int KDEBUG_TRACE ;
 TYPE_4__* TCE (TYPE_1__*) ;
 int TIMER_KDEBUG_TRACE (int ,int,int ,scalar_t__,scalar_t__,scalar_t__,int ) ;
 int VM_KERNEL_UNSLIDE_OR_PERM (TYPE_1__*) ;
 int assert (int) ;
 int callout__cancel ;
 scalar_t__ mach_absolute_time () ;
 scalar_t__ ml_get_interrupts_enabled () ;
 int quantum_timer_set_deadline (int ) ;
 int timer_call_func_t ;
 int timer_call_param_t ;
 int uint32_t ;

boolean_t
timer_call_quantum_timer_cancel(
 timer_call_t call)
{
 assert(ml_get_interrupts_enabled() == FALSE);

 TIMER_KDEBUG_TRACE(KDEBUG_TRACE,
         DECR_TIMER_CANCEL | DBG_FUNC_START,
  VM_KERNEL_UNSLIDE_OR_PERM(call), TCE(call)->deadline,
  0, call->flags, 0);

 TCE(call)->deadline = 0;
 quantum_timer_set_deadline(0);

 TIMER_KDEBUG_TRACE(KDEBUG_TRACE,
         DECR_TIMER_CANCEL | DBG_FUNC_END,
  VM_KERNEL_UNSLIDE_OR_PERM(call), 0,
  TCE(call)->deadline - mach_absolute_time(),
  TCE(call)->deadline - TCE(call)->entry_time, 0);







 return 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
typedef int boolean_t ;
struct TYPE_7__ {int task; } ;


 int FALSE ;
 int act_machine_switch_pcb (int *,TYPE_1__*) ;
 TYPE_1__* current_thread () ;
 int disable_preemption () ;
 int enable_preemption () ;
 int fpu_switch_addrmode (TYPE_1__*,int ) ;
 int machine_thread_create (TYPE_1__*,int ) ;
 int ml_set_interrupts_enabled (int ) ;
 int task_has_64Bit_addr (int ) ;

void
machine_thread_switch_addrmode(thread_t thread)
{




 disable_preemption();





 machine_thread_create(thread, thread->task);


 fpu_switch_addrmode(thread, task_has_64Bit_addr(thread->task));


 if (thread == current_thread()) {
  boolean_t istate = ml_set_interrupts_enabled(FALSE);
  act_machine_switch_pcb(((void*)0), thread);
  ml_set_interrupts_enabled(istate);
 }
 enable_preemption();
}

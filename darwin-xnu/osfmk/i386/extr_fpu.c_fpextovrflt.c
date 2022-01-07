
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int xstate_t ;
typedef int thread_t ;
struct x86_fx_thread_state {int dummy; } ;
typedef TYPE_1__* pcb_t ;
typedef int boolean_t ;
struct TYPE_3__ {int lock; struct x86_fx_thread_state* ifps; } ;


 int EXC_BAD_ACCESS ;
 int FALSE ;
 TYPE_1__* THREAD_TO_PCB (int ) ;
 int VM_PROT_EXECUTE ;
 int VM_PROT_READ ;
 int clear_fpu () ;
 int clear_ts () ;
 scalar_t__ current_task () ;
 int current_thread () ;
 int current_xstate () ;
 int fninit () ;
 int fp_state_free (struct x86_fx_thread_state*,int ) ;
 scalar_t__ get_interrupt_level () ;
 int i386_exception (int ,int,int ) ;
 scalar_t__ kernel_task ;
 int ml_set_interrupts_enabled (int ) ;
 int panic (char*) ;
 int simple_lock (int *) ;
 int simple_unlock (int *) ;

void
fpextovrflt(void)
{
 thread_t thr_act = current_thread();
 pcb_t pcb;
 struct x86_fx_thread_state *ifps;
 boolean_t intr;
 xstate_t xstate = current_xstate();

 intr = ml_set_interrupts_enabled(FALSE);

 if (get_interrupt_level())
  panic("FPU segment overrun exception  at interrupt context\n");
 if (current_task() == kernel_task)
  panic("FPU segment overrun exception in kernel thread context\n");





 pcb = THREAD_TO_PCB(thr_act);
 simple_lock(&pcb->lock);
 ifps = pcb->ifps;
 pcb->ifps = 0;
 simple_unlock(&pcb->lock);




 clear_ts();
 fninit();




 clear_fpu();

 (void)ml_set_interrupts_enabled(intr);

 if (ifps)
     fp_state_free(ifps, xstate);




 i386_exception(EXC_BAD_ACCESS, VM_PROT_READ|VM_PROT_EXECUTE, 0);

}

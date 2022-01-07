
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int esp; int esi; int edi; int edx; int ecx; int ebx; int eax; int eip; } ;
typedef TYPE_1__ x86_thread_state32_t ;
struct TYPE_5__ {void* es; void* ds; void* ss; int cs; int efl; int uesp; int esi; int edi; int edx; int ecx; int ebx; int eax; int eip; scalar_t__ ebp; } ;
typedef TYPE_2__ x86_saved_state32_t ;
typedef scalar_t__ thread_t ;
typedef scalar_t__ thread_state_t ;
typedef int spl_t ;
typedef int kern_return_t ;


 int DIRTY ;
 int EFL_USER_SET ;
 int KERN_SUCCESS ;
 int USER_CS ;
 void* USER_DS ;
 TYPE_2__* USER_REGS32 (scalar_t__) ;
 scalar_t__ current_thread () ;
 int pal_register_cache_state (scalar_t__,int ) ;
 int splsched () ;
 int splx (int ) ;
 int thread_lock (scalar_t__) ;
 int thread_unlock (scalar_t__) ;

kern_return_t
thread_set_wq_state32(thread_t thread, thread_state_t tstate)
{
        x86_thread_state32_t *state;
        x86_saved_state32_t *saved_state;
 thread_t curth = current_thread();
 spl_t s=0;

 pal_register_cache_state(thread, DIRTY);

 saved_state = USER_REGS32(thread);

 state = (x86_thread_state32_t *)tstate;

 if (curth != thread) {
  s = splsched();
         thread_lock(thread);
 }

 saved_state->ebp = 0;
 saved_state->eip = state->eip;
 saved_state->eax = state->eax;
 saved_state->ebx = state->ebx;
 saved_state->ecx = state->ecx;
 saved_state->edx = state->edx;
 saved_state->edi = state->edi;
 saved_state->esi = state->esi;
 saved_state->uesp = state->esp;
 saved_state->efl = EFL_USER_SET;

 saved_state->cs = USER_CS;
 saved_state->ss = USER_DS;
 saved_state->ds = USER_DS;
 saved_state->es = USER_DS;

 if (curth != thread) {
         thread_unlock(thread);
  splx(s);
 }

 return KERN_SUCCESS;
}

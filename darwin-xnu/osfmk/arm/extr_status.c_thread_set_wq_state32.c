
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_2__* thread_t ;
typedef scalar_t__ thread_state_t ;
struct arm_saved_state {int cpsr; } ;
typedef int spl_t ;
typedef int kern_return_t ;
typedef int arm_thread_state_t ;
struct TYPE_7__ {struct arm_saved_state PcbData; } ;
struct TYPE_8__ {TYPE_1__ machine; } ;


 int KERN_SUCCESS ;
 int PSR_USERDFLT ;
 TYPE_2__* current_thread () ;
 int splsched () ;
 int splx (int ) ;
 int thread_lock (TYPE_2__*) ;
 int thread_state32_to_saved_state (int *,struct arm_saved_state*) ;
 int thread_unlock (TYPE_2__*) ;

kern_return_t
thread_set_wq_state32(thread_t thread, thread_state_t tstate)
{
 arm_thread_state_t *state;
 struct arm_saved_state *saved_state;
 thread_t curth = current_thread();
 spl_t s=0;

 saved_state = &thread->machine.PcbData;
 state = (arm_thread_state_t *)tstate;

 if (curth != thread) {
  s = splsched();
  thread_lock(thread);
 }






 thread_state32_to_saved_state(state, saved_state);
 saved_state->cpsr = PSR_USERDFLT;

 if (curth != thread) {
  thread_unlock(thread);
  splx(s);
 }

 return KERN_SUCCESS;
}

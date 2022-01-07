
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_2__* thread_t ;
typedef scalar_t__ thread_state_t ;
struct arm_saved_state32 {int cpsr; } ;
struct arm_saved_state {int dummy; } ;
typedef int spl_t ;
typedef int kern_return_t ;
typedef int arm_thread_state_t ;
struct TYPE_8__ {struct arm_saved_state* upcb; } ;
struct TYPE_9__ {TYPE_1__ machine; } ;


 int KERN_SUCCESS ;
 int PSR64_USER32_DEFAULT ;
 int assert (int) ;
 TYPE_2__* current_thread () ;
 struct arm_saved_state32* saved_state32 (struct arm_saved_state*) ;
 int splsched () ;
 int splx (int ) ;
 int thread_is_64bit_data (TYPE_2__*) ;
 int thread_lock (TYPE_2__*) ;
 int thread_state32_to_saved_state (int *,struct arm_saved_state*) ;
 int thread_unlock (TYPE_2__*) ;

kern_return_t
thread_set_wq_state32(thread_t thread, thread_state_t tstate)
{
 arm_thread_state_t *state;
 struct arm_saved_state *saved_state;
 struct arm_saved_state32 *saved_state_32;
 thread_t curth = current_thread();
 spl_t s=0;

 assert(!thread_is_64bit_data(thread));

 saved_state = thread->machine.upcb;
 saved_state_32 = saved_state32(saved_state);

 state = (arm_thread_state_t *)tstate;

 if (curth != thread) {
  s = splsched();
  thread_lock(thread);
 }






 thread_state32_to_saved_state(state, saved_state);
 saved_state_32->cpsr = PSR64_USER32_DEFAULT;

 if (curth != thread) {
  thread_unlock(thread);
  splx(s);
 }

 return KERN_SUCCESS;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int dtrace_state_t ;


 int DTRACE_NCLIENTS ;
 int atomic_and_32 (int *,int ) ;
 int disable_preemption () ;
 int * dtrace_state_get (int) ;
 int dtrace_wake_clients ;
 int enable_preemption () ;
 int wakeup (int *) ;

void
dtrace_ast(void)
{
 int i;
 uint32_t clients = atomic_and_32(&dtrace_wake_clients, 0);
 if (clients == 0)
  return;





 disable_preemption();
 for (i = 0; i < DTRACE_NCLIENTS; i++) {
  if (clients & (1 << i)) {
   dtrace_state_t *state = dtrace_state_get(i);
   if (state) {
    wakeup(state);
   }

  }
 }
 enable_preemption();
}

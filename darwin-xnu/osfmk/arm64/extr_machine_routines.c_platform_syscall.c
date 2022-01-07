
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int arm_saved_state_t ;


 int dcache_flush_trap (scalar_t__,scalar_t__) ;
 scalar_t__ get_saved_state_reg (int *,int) ;
 int icache_invalidate_trap (scalar_t__,scalar_t__) ;
 int platform_syscall_kprintf (char*,...) ;
 int set_saved_state_reg (int *,int ,int ) ;
 int thread_exception_return () ;
 int thread_get_cthread_self () ;
 int thread_set_cthread_self (scalar_t__) ;

__attribute__((noreturn))
void
platform_syscall(arm_saved_state_t *state)
{
 uint32_t code;



 code = (uint32_t)get_saved_state_reg(state, 3);
 switch (code) {
 case 0:

                                                       ;
  icache_invalidate_trap(get_saved_state_reg(state, 0), get_saved_state_reg(state, 1));
  break;
 case 1:

                                                       ;
  dcache_flush_trap(get_saved_state_reg(state, 0), get_saved_state_reg(state, 1));
  break;
 case 2:

                                                 ;
  thread_set_cthread_self(get_saved_state_reg(state, 0));
  break;
 case 3:

                                                 ;
  set_saved_state_reg(state, 0, thread_get_cthread_self());
  break;
 default:
                                                 ;
  break;
 }

 thread_exception_return();
}

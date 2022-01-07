
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int event_t ;
typedef int boolean_t ;
struct TYPE_2__ {unsigned int max_cpus; } ;


 int FALSE ;
 scalar_t__ MAX_CPUS_SET ;
 scalar_t__ MAX_CPUS_WAIT ;
 int THREAD_CONTINUE_NULL ;
 int THREAD_UNINT ;
 int assert_wait (int ,int ) ;
 TYPE_1__ machine_info ;
 scalar_t__ max_cpus_initialized ;
 int ml_set_interrupts_enabled (int ) ;
 int thread_block (int ) ;

unsigned int
ml_get_max_cpus(void)
{
 boolean_t current_state;

 current_state = ml_set_interrupts_enabled(FALSE);
 if (max_cpus_initialized != MAX_CPUS_SET) {
  max_cpus_initialized = MAX_CPUS_WAIT;
  assert_wait((event_t) & max_cpus_initialized, THREAD_UNINT);
  (void) thread_block(THREAD_CONTINUE_NULL);
 }
 (void) ml_set_interrupts_enabled(current_state);
 return (machine_info.max_cpus);
}

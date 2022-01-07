
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int event_t ;


 scalar_t__ FALSE ;
 int THREAD_CONTINUE_NULL ;
 int THREAD_UNINT ;
 int TIMEOUT_URGENCY_LEEWAY ;
 int assert_wait_deadline (int ,int ,scalar_t__) ;
 int assert_wait_deadline_with_leeway (int ,int ,int ,scalar_t__,scalar_t__) ;
 scalar_t__ clock_delay_until ;
 scalar_t__ get_preemption_level () ;
 int machine_delay_until (scalar_t__,scalar_t__) ;
 scalar_t__ ml_delay_should_spin (scalar_t__) ;
 scalar_t__ ml_get_interrupts_enabled () ;
 int thread_block (int ) ;

void
_clock_delay_until_deadline_with_leeway(
 uint64_t interval,
 uint64_t deadline,
 uint64_t leeway)
{

 if (interval == 0)
  return;

 if ( ml_delay_should_spin(interval) ||
   get_preemption_level() != 0 ||
   ml_get_interrupts_enabled() == FALSE ) {
  machine_delay_until(interval, deadline);
 } else {





  if (leeway) {
   assert_wait_deadline_with_leeway((event_t)clock_delay_until, THREAD_UNINT, TIMEOUT_URGENCY_LEEWAY, deadline, leeway);
  } else {
   assert_wait_deadline((event_t)clock_delay_until, THREAD_UNINT, deadline);
  }

  thread_block(THREAD_CONTINUE_NULL);
 }
}

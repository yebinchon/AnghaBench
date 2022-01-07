
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 scalar_t__ FALSE ;
 int LCK_MTX_ASSERT (int *,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int NSEC_PER_SEC ;
 int THREAD_CALL_DELAY_LEEWAY ;
 scalar_t__ TRUE ;
 int clock_interval_to_absolutetime_interval (unsigned int,int ,int *) ;
 int clock_interval_to_deadline (int,int ,int *) ;
 int inpcb_fast_thread_call ;
 scalar_t__ inpcb_fast_timer_on ;
 scalar_t__ inpcb_garbage_collecting ;
 int inpcb_thread_call ;
 scalar_t__ inpcb_ticking ;
 int inpcb_timeout_lock ;
 int inpcb_timeout_run ;
 int lck_mtx_convert_spin (int *) ;
 int thread_call_enter_delayed (int ,int ) ;
 int thread_call_enter_delayed_with_leeway (int ,int *,int ,int ,int ) ;

__attribute__((used)) static void
_inpcb_sched_timeout(unsigned int offset)
{
 uint64_t deadline, leeway;

 clock_interval_to_deadline(1, NSEC_PER_SEC, &deadline);
 LCK_MTX_ASSERT(&inpcb_timeout_lock, LCK_MTX_ASSERT_OWNED);
 if (inpcb_timeout_run == 0 &&
     (inpcb_garbage_collecting || inpcb_ticking)) {
  lck_mtx_convert_spin(&inpcb_timeout_lock);
  inpcb_timeout_run++;
  if (offset == 0) {
   inpcb_fast_timer_on = TRUE;
   thread_call_enter_delayed(inpcb_thread_call,
       deadline);
  } else {
   inpcb_fast_timer_on = FALSE;
   clock_interval_to_absolutetime_interval(offset,
       NSEC_PER_SEC, &leeway);
   thread_call_enter_delayed_with_leeway(
       inpcb_thread_call, ((void*)0), deadline, leeway,
       THREAD_CALL_DELAY_LEEWAY);
  }
 } else if (inpcb_timeout_run == 1 &&
     offset == 0 && !inpcb_fast_timer_on) {





  lck_mtx_convert_spin(&inpcb_timeout_lock);
  inpcb_timeout_run++;
  inpcb_fast_timer_on = TRUE;
  thread_call_enter_delayed(inpcb_fast_thread_call, deadline);
 }
}

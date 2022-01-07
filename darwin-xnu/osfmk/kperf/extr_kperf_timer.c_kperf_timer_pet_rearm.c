
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct kperf_timer {scalar_t__ period; int tcall; } ;


 int BUF_INFO (int ,scalar_t__,...) ;
 unsigned int KPERF_SAMPLING_OFF ;
 unsigned int KPERF_SAMPLING_SHUTDOWN ;
 int PERF_PET_END ;
 int PERF_PET_SCHED ;
 int SAMPLE_OFF ;
 int SAMPLE_SHUTDOWN ;
 int TIMER_CALL_SYS_CRITICAL ;
 unsigned int kperf_sampling_status () ;
 size_t kperf_timerc ;
 struct kperf_timer* kperf_timerv ;
 scalar_t__ mach_absolute_time () ;
 scalar_t__ min_period_pet_abstime ;
 size_t pet_timer_id ;
 int timer_call_enter (int *,scalar_t__,int ) ;

void
kperf_timer_pet_rearm(uint64_t elapsed_ticks)
{
 struct kperf_timer *timer = ((void*)0);
 uint64_t period = 0;
 uint64_t deadline;





 if (pet_timer_id >= kperf_timerc) {
  return;
 }

 unsigned int status = kperf_sampling_status();

 if (status == KPERF_SAMPLING_OFF) {
  BUF_INFO(PERF_PET_END, SAMPLE_OFF);
  return;
 } else if (status == KPERF_SAMPLING_SHUTDOWN) {
  BUF_INFO(PERF_PET_END, SAMPLE_SHUTDOWN);
  return;
 }

 timer = &(kperf_timerv[pet_timer_id]);


 if (!timer->period) {
  return;
 }


 if (timer->period > elapsed_ticks) {
  period = timer->period - elapsed_ticks;
 }


 if (period < min_period_pet_abstime) {
  period = min_period_pet_abstime;
 }




 deadline = mach_absolute_time() + period;

 BUF_INFO(PERF_PET_SCHED, timer->period, period, elapsed_ticks, deadline);


 timer_call_enter(&timer->tcall, deadline, TIMER_CALL_SYS_CRITICAL);

 return;
}

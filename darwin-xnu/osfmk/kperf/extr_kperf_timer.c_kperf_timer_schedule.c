
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct kperf_timer {scalar_t__ period; int tcall; } ;


 int BUF_INFO (int ,scalar_t__) ;
 int PERF_TM_SCHED ;
 int TIMER_CALL_SYS_CRITICAL ;
 int timer_call_enter (int *,scalar_t__,int ) ;

__attribute__((used)) static void
kperf_timer_schedule(struct kperf_timer *timer, uint64_t now)
{
 BUF_INFO(PERF_TM_SCHED, timer->period);


 if (timer->period == 0) {
  return;
 }


 uint64_t deadline = now + timer->period;


 timer_call_enter(&timer->tcall, deadline, TIMER_CALL_SYS_CRITICAL);
}

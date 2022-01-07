
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_6__ {scalar_t__ interval; int margin; scalar_t__ deadline_set; scalar_t__ deadline; scalar_t__ latency_max; int latency_min; scalar_t__ latency; scalar_t__ preempts; scalar_t__ scans; int timer; } ;
struct TYPE_7__ {TYPE_1__ threshold; scalar_t__ scan_pauses; scalar_t__ escalates; scalar_t__ dequeues; scalar_t__ enqueues; } ;
typedef TYPE_2__ timer_longterm_t ;
typedef int spl_t ;
typedef int boolean_t ;


 int EndOfAllTime ;
 int FALSE ;
 scalar_t__ NSEC_PER_MSEC ;
 int TIMER_CALL_LOCAL ;
 int TIMER_CALL_SYS_CRITICAL ;
 scalar_t__ TIMER_LONGTERM_NONE ;
 int TRUE ;
 int mach_absolute_time () ;
 int nanoseconds_to_absolutetime (scalar_t__,scalar_t__*) ;
 int splclock () ;
 int splx (int ) ;
 int timer_call_cancel (int *) ;
 int timer_call_enter (int *,scalar_t__,int) ;
 TYPE_2__ timer_longterm ;
 int timer_longterm_queue ;
 int timer_longterm_scan (TYPE_2__*,int ) ;
 int timer_master_scan (TYPE_2__*,int ) ;
 int timer_queue_lock_spin (int ) ;
 int timer_queue_unlock (int ) ;

__attribute__((used)) static void
timer_sysctl_set_threshold(uint64_t value)
{
 timer_longterm_t *tlp = &timer_longterm;
 spl_t s = splclock();
 boolean_t threshold_increase;

 timer_queue_lock_spin(timer_longterm_queue);

 timer_call_cancel(&tlp->threshold.timer);




 if (value == 0) {
  tlp->threshold.interval = TIMER_LONGTERM_NONE;
  threshold_increase = TRUE;
  timer_call_cancel(&tlp->threshold.timer);
 } else {
  uint64_t old_interval = tlp->threshold.interval;
  tlp->threshold.interval = value * NSEC_PER_MSEC;
  nanoseconds_to_absolutetime(tlp->threshold.interval,
         &tlp->threshold.interval);
  tlp->threshold.margin = tlp->threshold.interval / 10;
  if (old_interval == TIMER_LONGTERM_NONE)
   threshold_increase = FALSE;
  else
   threshold_increase = (tlp->threshold.interval > old_interval);
 }

 if (threshold_increase ) {

  timer_longterm_scan(tlp, mach_absolute_time());
 } else {






  timer_master_scan(tlp, mach_absolute_time());
 }


 tlp->threshold.deadline_set = tlp->threshold.deadline;
 if (tlp->threshold.deadline != TIMER_LONGTERM_NONE) {
  tlp->threshold.deadline_set -= tlp->threshold.margin;
  tlp->threshold.deadline_set -= tlp->threshold.latency;
  timer_call_enter(
   &tlp->threshold.timer,
   tlp->threshold.deadline_set,
   TIMER_CALL_LOCAL | TIMER_CALL_SYS_CRITICAL);
 }


 tlp->enqueues = 0;
 tlp->dequeues = 0;
 tlp->escalates = 0;
 tlp->scan_pauses = 0;
 tlp->threshold.scans = 0;
 tlp->threshold.preempts = 0;
 tlp->threshold.latency = 0;
 tlp->threshold.latency_min = EndOfAllTime;
 tlp->threshold.latency_max = 0;

 timer_queue_unlock(timer_longterm_queue);
 splx(s);
}

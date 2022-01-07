
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef TYPE_1__* thread_t ;
typedef int spl_t ;
struct TYPE_6__ {int sched_flags; int depress_timer_active; int depress_timer; } ;


 int SETPRI_LAZY ;
 int TH_SFLAG_DEPRESS ;
 int TH_SFLAG_POLLDEPRESS ;
 int TIMER_CALL_USER_CRITICAL ;
 int assert (int) ;
 int clock_absolutetime_interval_to_deadline (scalar_t__,scalar_t__*) ;
 TYPE_1__* current_thread () ;
 int splsched () ;
 int splx (int ) ;
 int thread_lock (TYPE_1__*) ;
 int thread_recompute_sched_pri (TYPE_1__*,int ) ;
 int thread_unlock (TYPE_1__*) ;
 int timer_call_enter (int *,scalar_t__,int ) ;

void
thread_depress_abstime(uint64_t interval)
{
 thread_t self = current_thread();

 spl_t s = splsched();
 thread_lock(self);

 assert((self->sched_flags & TH_SFLAG_DEPRESS) == 0);

 if ((self->sched_flags & TH_SFLAG_POLLDEPRESS) == 0) {
  self->sched_flags |= TH_SFLAG_DEPRESS;
  thread_recompute_sched_pri(self, SETPRI_LAZY);

  if (interval != 0) {
   uint64_t deadline;

   clock_absolutetime_interval_to_deadline(interval, &deadline);
   if (!timer_call_enter(&self->depress_timer, deadline, TIMER_CALL_USER_CRITICAL))
    self->depress_timer_active++;
  }
 }

 thread_unlock(self);
 splx(s);
}

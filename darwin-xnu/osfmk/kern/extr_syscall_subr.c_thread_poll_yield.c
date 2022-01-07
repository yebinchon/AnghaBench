
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint64_t ;
typedef TYPE_1__* thread_t ;
typedef int spl_t ;
struct TYPE_7__ {int sched_flags; scalar_t__ sched_mode; int computation_epoch; int computation_metered; int depress_timer_active; int depress_timer; } ;


 int SETPRI_DEFAULT ;
 scalar_t__ TH_MODE_FIXED ;
 int TH_SFLAG_DEPRESS ;
 int TH_SFLAG_POLLDEPRESS ;
 int TIMER_CALL_USER_CRITICAL ;
 int assert (int) ;
 TYPE_1__* current_thread () ;
 int mach_absolute_time () ;
 int max_poll_computation ;
 int sched_poll_yield_shift ;
 int splsched () ;
 int splx (int ) ;
 int thread_lock (TYPE_1__*) ;
 int thread_recompute_sched_pri (TYPE_1__*,int ) ;
 int thread_unlock (TYPE_1__*) ;
 int timer_call_enter (int *,int,int ) ;

void
thread_poll_yield(thread_t self)
{
 assert(self == current_thread());
 assert((self->sched_flags & TH_SFLAG_DEPRESS) == 0);

 if (self->sched_mode != TH_MODE_FIXED)
  return;

 spl_t s = splsched();

 uint64_t abstime = mach_absolute_time();
 uint64_t total_computation = abstime -
         self->computation_epoch + self->computation_metered;

 if (total_computation >= max_poll_computation) {
  thread_lock(self);

  self->computation_epoch = abstime;
  self->computation_metered = 0;

  uint64_t yield_expiration = abstime +
           (total_computation >> sched_poll_yield_shift);

  if (!timer_call_enter(&self->depress_timer, yield_expiration,
                        TIMER_CALL_USER_CRITICAL))
   self->depress_timer_active++;

  self->sched_flags |= TH_SFLAG_POLLDEPRESS;
  thread_recompute_sched_pri(self, SETPRI_DEFAULT);

  thread_unlock(self);
 }
 splx(s);
}

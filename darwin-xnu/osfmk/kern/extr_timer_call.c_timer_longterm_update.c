
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ deadline; int deadline_set; int timer; } ;
struct TYPE_6__ {TYPE_1__ threshold; } ;
typedef TYPE_2__ timer_longterm_t ;
typedef int spl_t ;


 int TIMER_CALL_LOCAL ;
 int TIMER_CALL_SYS_CRITICAL ;
 scalar_t__ TIMER_LONGTERM_NONE ;
 scalar_t__ cpu_number () ;
 scalar_t__ master_cpu ;
 int panic (char*) ;
 int splclock () ;
 int splx (int ) ;
 int timer_call_enter (int *,int ,int) ;
 int timer_longterm_queue ;
 int timer_longterm_update_locked (TYPE_2__*) ;
 int timer_queue_lock_spin (int ) ;
 int timer_queue_unlock (int ) ;

void
timer_longterm_update(timer_longterm_t *tlp)
{
 spl_t s = splclock();

 timer_queue_lock_spin(timer_longterm_queue);

 if (cpu_number() != master_cpu)
  panic("timer_longterm_update_master() on non-boot cpu");

 timer_longterm_update_locked(tlp);

 if (tlp->threshold.deadline != TIMER_LONGTERM_NONE)
  timer_call_enter(
   &tlp->threshold.timer,
   tlp->threshold.deadline_set,
   TIMER_CALL_LOCAL | TIMER_CALL_SYS_CRITICAL);

 timer_queue_unlock(timer_longterm_queue);
 splx(s);
}

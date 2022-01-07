
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef TYPE_1__* thread_t ;
struct TYPE_7__ {scalar_t__ sched_mode; int base_pri; int state; scalar_t__ last_made_runnable_time; scalar_t__ last_basepri_change_time; } ;


 int BASEPRI_RTQUEUES ;
 int MINPRI ;
 int PERFCONTROL_ATTR_UPDATE ;
 int PERFCONTROL_CALLOUT_WAKE_UNSAFE ;
 int SETPRI_DEFAULT ;
 scalar_t__ THREAD_NOT_RUNNABLE ;
 scalar_t__ TH_MODE_REALTIME ;
 int TH_RUN ;
 int assert (int) ;
 TYPE_1__* current_thread () ;
 scalar_t__ mach_approximate_time () ;
 int machine_switch_perfcontrol_state_update (int ,scalar_t__,int ,TYPE_1__*) ;
 int sched_update_thread_bucket (TYPE_1__*) ;
 int thread_recompute_sched_pri (TYPE_1__*,int ) ;

void
sched_set_thread_base_priority(thread_t thread, int priority)
{
 assert(priority >= MINPRI);
 uint64_t ctime = 0;

 if (thread->sched_mode == TH_MODE_REALTIME)
  assert(priority <= BASEPRI_RTQUEUES);
 else
  assert(priority < BASEPRI_RTQUEUES);

 int old_base_pri = thread->base_pri;
 thread->base_pri = priority;

 if ((thread->state & TH_RUN) == TH_RUN) {
  assert(thread->last_made_runnable_time != THREAD_NOT_RUNNABLE);
  ctime = mach_approximate_time();
  thread->last_basepri_change_time = ctime;
 } else {
  assert(thread->last_basepri_change_time == THREAD_NOT_RUNNABLE);
  assert(thread->last_made_runnable_time == THREAD_NOT_RUNNABLE);
 }






 if (thread == current_thread() && old_base_pri != priority) {
  if (!ctime) {
      ctime = mach_approximate_time();
  }
  machine_switch_perfcontrol_state_update(PERFCONTROL_ATTR_UPDATE,
   ctime, PERFCONTROL_CALLOUT_WAKE_UNSAFE, thread);
 }
 sched_update_thread_bucket(thread);

 thread_recompute_sched_pri(thread, SETPRI_DEFAULT);
}

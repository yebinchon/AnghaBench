
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
typedef TYPE_1__* thread_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_7__ {int sched_flags; scalar_t__ saved_mode; scalar_t__ sched_mode; scalar_t__ policy_reset; } ;


 int SCHED_TAILQ ;
 scalar_t__ TH_MODE_NONE ;
 scalar_t__ TH_MODE_TIMESHARE ;
 int TH_SFLAG_DEMOTED_MASK ;
 int assert (int) ;
 int sched_set_thread_mode (TYPE_1__*,scalar_t__) ;
 int thread_recompute_priority (TYPE_1__*) ;
 int thread_run_queue_reinsert (TYPE_1__*,int ) ;
 scalar_t__ thread_run_queue_remove (TYPE_1__*) ;

void
sched_thread_mode_undemote(thread_t thread, uint32_t reason)
{
 assert(reason & TH_SFLAG_DEMOTED_MASK);
 assert((thread->sched_flags & reason) == reason);
 assert(thread->saved_mode != TH_MODE_NONE);
 assert(thread->sched_mode == TH_MODE_TIMESHARE);
 assert(thread->policy_reset == 0);

 thread->sched_flags &= ~reason;

 if (thread->sched_flags & TH_SFLAG_DEMOTED_MASK) {

  return;
 }

 boolean_t removed = thread_run_queue_remove(thread);

 sched_set_thread_mode(thread, thread->saved_mode);

 thread->saved_mode = TH_MODE_NONE;

 thread_recompute_priority(thread);

 if (removed)
  thread_run_queue_reinsert(thread, SCHED_TAILQ);
}

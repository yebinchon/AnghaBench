
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
typedef int sched_mode_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_7__ {int sched_flags; int saved_mode; scalar_t__ policy_reset; } ;


 int SCHED_TAILQ ;
 int TH_SFLAG_DEMOTED_MASK ;
 int sched_set_thread_mode (TYPE_1__*,int ) ;
 int thread_recompute_priority (TYPE_1__*) ;
 int thread_run_queue_reinsert (TYPE_1__*,int ) ;
 scalar_t__ thread_run_queue_remove (TYPE_1__*) ;

__attribute__((used)) static void
thread_set_user_sched_mode_and_recompute_pri(thread_t thread, sched_mode_t mode)
{
 if (thread->policy_reset)
  return;

 boolean_t removed = thread_run_queue_remove(thread);






 if (thread->sched_flags & TH_SFLAG_DEMOTED_MASK)
  thread->saved_mode = mode;
 else
  sched_set_thread_mode(thread, mode);

 thread_recompute_priority(thread);

 if (removed)
  thread_run_queue_reinsert(thread, SCHED_TAILQ);
}

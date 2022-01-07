
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
struct waitq {scalar_t__ waitq_eventmask; } ;
struct TYPE_6__ {struct waitq* waitq; } ;


 int assert (int) ;
 int assert_thread_magic (TYPE_1__*) ;
 int thread_clear_waitq_state (TYPE_1__*) ;
 scalar_t__ waitq_empty (struct waitq*) ;
 struct waitq* waitq_get_safeq (struct waitq*) ;
 int waitq_irq_safe (struct waitq*) ;
 scalar_t__ waitq_is_global (struct waitq*) ;
 int waitq_lock_try (struct waitq*) ;
 int waitq_stats_count_clear_wakeup (struct waitq*) ;
 int waitq_thread_remove (struct waitq*,TYPE_1__*) ;
 int waitq_unlock (struct waitq*) ;

int waitq_pull_thread_locked(struct waitq *waitq, thread_t thread)
{
 struct waitq *safeq;

 assert_thread_magic(thread);
 assert(thread->waitq == waitq);


 if (!waitq_irq_safe(waitq)) {
  safeq = waitq_get_safeq(waitq);
 } else {
  safeq = waitq;
 }


 if (!waitq_lock_try(safeq))
  return 0;

 waitq_thread_remove(safeq, thread);
 thread_clear_waitq_state(thread);
 waitq_stats_count_clear_wakeup(waitq);


 if (waitq_is_global(safeq) && waitq_empty(safeq)) {
  safeq->waitq_eventmask = 0;

 }

 waitq_unlock(safeq);

 return 1;
}

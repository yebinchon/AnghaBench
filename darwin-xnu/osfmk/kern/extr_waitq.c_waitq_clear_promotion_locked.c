
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
struct waitq {int dummy; } ;
typedef int spl_t ;
struct TYPE_8__ {int sched_flags; } ;


 TYPE_1__* THREAD_NULL ;
 int TH_SFLAG_WAITQ_PROMOTED ;
 int assert (int) ;
 TYPE_1__* current_thread () ;
 int sched_thread_unpromote_reason (TYPE_1__*,int,int ) ;
 int splsched () ;
 int splx (int ) ;
 int thread_lock (TYPE_1__*) ;
 int thread_unlock (TYPE_1__*) ;
 int waitq_held (struct waitq*) ;
 int waitq_irq_safe (struct waitq*) ;

void waitq_clear_promotion_locked(struct waitq *waitq, thread_t thread)
{
 spl_t s;

 assert(waitq_held(waitq));
 assert(thread != THREAD_NULL);
 assert(thread == current_thread());


 if ((thread->sched_flags & TH_SFLAG_WAITQ_PROMOTED) != TH_SFLAG_WAITQ_PROMOTED)
  return;

 if (!waitq_irq_safe(waitq))
  s = splsched();
 thread_lock(thread);

 sched_thread_unpromote_reason(thread, TH_SFLAG_WAITQ_PROMOTED, 0);

 thread_unlock(thread);
 if (!waitq_irq_safe(waitq))
  splx(s);
}

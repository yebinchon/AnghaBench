
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
typedef int spl_t ;
struct TYPE_6__ {scalar_t__ rwlock_count; int sched_flags; } ;


 int TH_SFLAG_RW_PROMOTED ;
 int assert (int) ;
 int sched_thread_unpromote_reason (TYPE_1__*,int,uintptr_t) ;
 int splsched () ;
 int splx (int ) ;
 int thread_lock (TYPE_1__*) ;
 int thread_unlock (TYPE_1__*) ;

void lck_rw_clear_promotion(thread_t thread, uintptr_t trace_obj)
{
 assert(thread->rwlock_count == 0);


 spl_t s = splsched();
 thread_lock(thread);

 if (thread->sched_flags & TH_SFLAG_RW_PROMOTED)
  sched_thread_unpromote_reason(thread, TH_SFLAG_RW_PROMOTED, trace_obj);

 thread_unlock(thread);
 splx(s);
}

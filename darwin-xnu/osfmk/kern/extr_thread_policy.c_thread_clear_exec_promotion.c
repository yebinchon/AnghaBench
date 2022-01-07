
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_t ;
typedef int spl_t ;


 int TH_SFLAG_EXEC_PROMOTED ;
 int sched_thread_unpromote_reason (int ,int ,int ) ;
 int splsched () ;
 int splx (int ) ;
 int thread_lock (int ) ;
 int thread_unlock (int ) ;

void
thread_clear_exec_promotion(thread_t thread)
{
 spl_t s = splsched();
 thread_lock(thread);

 sched_thread_unpromote_reason(thread, TH_SFLAG_EXEC_PROMOTED, 0);

 thread_unlock(thread);
 splx(s);
}

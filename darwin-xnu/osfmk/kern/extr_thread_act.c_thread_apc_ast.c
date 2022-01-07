
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
typedef int spl_t ;
struct TYPE_7__ {scalar_t__ suspend_parked; int sched_flags; scalar_t__ suspend_count; int active; } ;


 scalar_t__ FALSE ;
 int THREAD_ABORTSAFE ;
 int THREAD_WAIT_NOREPORT_USER ;
 int TH_SFLAG_ABORTED_MASK ;
 int TH_SFLAG_DEPRESS ;
 scalar_t__ TRUE ;
 int assert (int) ;
 int assert_wait (scalar_t__*,int) ;
 int splsched () ;
 int splx (int ) ;
 int thread_block (int ) ;
 int thread_lock (TYPE_1__*) ;
 int thread_mtx_lock (TYPE_1__*) ;
 int thread_mtx_unlock (TYPE_1__*) ;
 int thread_suspended ;
 int thread_terminate_self () ;
 int thread_unlock (TYPE_1__*) ;

void
thread_apc_ast(thread_t thread)
{
 thread_mtx_lock(thread);

 assert(thread->suspend_parked == FALSE);

 spl_t s = splsched();
 thread_lock(thread);


 assert((thread->sched_flags & TH_SFLAG_DEPRESS) == 0);

 thread->sched_flags &= ~TH_SFLAG_ABORTED_MASK;
 thread_unlock(thread);
 splx(s);

 if (!thread->active) {

  thread_mtx_unlock(thread);

  thread_terminate_self();

 }


 if (thread->suspend_count > 0) {
  thread->suspend_parked = TRUE;
  assert_wait(&thread->suspend_count,
    THREAD_ABORTSAFE | THREAD_WAIT_NOREPORT_USER);
  thread_mtx_unlock(thread);

  thread_block(thread_suspended);

 }

 thread_mtx_unlock(thread);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
typedef int spl_t ;
struct TYPE_7__ {int sched_flags; } ;


 int TH_SFLAG_ABORT ;
 int TH_SFLAG_ABORTSAFELY ;
 int splsched () ;
 int splx (int ) ;
 int thread_depress_abort_locked (TYPE_1__*) ;
 int thread_lock (TYPE_1__*) ;
 int thread_set_apc_ast_locked (TYPE_1__*) ;
 int thread_unlock (TYPE_1__*) ;

__attribute__((used)) static void
act_abort(
 thread_t thread)
{
 spl_t s = splsched();

 thread_lock(thread);

 if (!(thread->sched_flags & TH_SFLAG_ABORT)) {
  thread->sched_flags |= TH_SFLAG_ABORT;
  thread_set_apc_ast_locked(thread);
  thread_depress_abort_locked(thread);
 } else {
  thread->sched_flags &= ~TH_SFLAG_ABORTSAFELY;
 }

 thread_unlock(thread);
 splx(s);
}

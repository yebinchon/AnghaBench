
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
typedef int spl_t ;
typedef int boolean_t ;
struct TYPE_5__ {int sched_flags; int options; } ;


 int FALSE ;
 int THREAD_UNINT ;
 int TH_OPT_INTMASK ;
 int TH_SFLAG_ABORT ;
 int TH_SFLAG_ABORTED_MASK ;
 int TH_SFLAG_ABORTSAFELY ;
 int TRUE ;
 TYPE_1__* current_thread () ;
 int splsched () ;
 int splx (int ) ;
 int thread_lock (TYPE_1__*) ;
 int thread_unlock (TYPE_1__*) ;

boolean_t
current_thread_aborted (
  void)
{
 thread_t th = current_thread();
 spl_t s;

 if ((th->sched_flags & TH_SFLAG_ABORTED_MASK) == TH_SFLAG_ABORT &&
   (th->options & TH_OPT_INTMASK) != THREAD_UNINT)
  return (TRUE);
 if (th->sched_flags & TH_SFLAG_ABORTSAFELY) {
  s = splsched();
  thread_lock(th);
  if (th->sched_flags & TH_SFLAG_ABORTSAFELY)
   th->sched_flags &= ~TH_SFLAG_ABORTED_MASK;
  thread_unlock(th);
  splx(s);
 }
 return FALSE;
}

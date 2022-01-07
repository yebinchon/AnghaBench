
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
typedef int kern_return_t ;
struct TYPE_4__ {int sched_flags; int depress_timer_active; int depress_timer; } ;


 int KERN_NOT_DEPRESSED ;
 int KERN_SUCCESS ;
 int SETPRI_LAZY ;
 int TH_SFLAG_DEPRESSED_MASK ;
 int assert (int) ;
 int thread_recompute_sched_pri (TYPE_1__*,int ) ;
 scalar_t__ timer_call_cancel (int *) ;

kern_return_t
thread_depress_abort_locked(thread_t thread)
{
 if ((thread->sched_flags & TH_SFLAG_DEPRESSED_MASK) == 0)
  return KERN_NOT_DEPRESSED;

 assert((thread->sched_flags & TH_SFLAG_DEPRESSED_MASK) != TH_SFLAG_DEPRESSED_MASK);

 thread->sched_flags &= ~TH_SFLAG_DEPRESSED_MASK;

 thread_recompute_sched_pri(thread, SETPRI_LAZY);

 if (timer_call_cancel(&thread->depress_timer))
  thread->depress_timer_active--;

 return KERN_SUCCESS;
}

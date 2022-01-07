
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
typedef int spl_t ;
typedef int kern_return_t ;
struct TYPE_6__ {int sched_flags; } ;


 int KERN_NOT_DEPRESSED ;
 int TH_SFLAG_DEPRESSED_MASK ;
 int TH_SFLAG_POLLDEPRESS ;
 int assert (int) ;
 int splsched () ;
 int splx (int ) ;
 int thread_depress_abort_locked (TYPE_1__*) ;
 int thread_lock (TYPE_1__*) ;
 int thread_unlock (TYPE_1__*) ;

kern_return_t
thread_depress_abort(thread_t thread)
{
 kern_return_t result = KERN_NOT_DEPRESSED;

 spl_t s = splsched();
 thread_lock(thread);

 assert((thread->sched_flags & TH_SFLAG_DEPRESSED_MASK) != TH_SFLAG_DEPRESSED_MASK);





 if ((thread->sched_flags & TH_SFLAG_POLLDEPRESS) == 0) {
  result = thread_depress_abort_locked(thread);
 }

 thread_unlock(thread);
 splx(s);

 return result;
}

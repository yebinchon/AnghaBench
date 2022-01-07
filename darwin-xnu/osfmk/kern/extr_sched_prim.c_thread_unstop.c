
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
typedef int spl_t ;
struct TYPE_7__ {int state; scalar_t__ wake_active; } ;


 scalar_t__ FALSE ;
 int TH_RUN ;
 int TH_SUSP ;
 int TH_WAIT ;
 int assert (int) ;
 int splsched () ;
 int splx (int ) ;
 int thread_lock (TYPE_1__*) ;
 int thread_unlock (TYPE_1__*) ;
 int thread_wakeup (scalar_t__*) ;
 int wake_lock (TYPE_1__*) ;
 int wake_unlock (TYPE_1__*) ;

void
thread_unstop(
 thread_t thread)
{
 spl_t s = splsched();

 wake_lock(thread);
 thread_lock(thread);

 assert((thread->state & (TH_RUN|TH_WAIT|TH_SUSP)) != TH_SUSP);

 if (thread->state & TH_SUSP) {
  thread->state &= ~TH_SUSP;

  if (thread->wake_active) {
   thread->wake_active = FALSE;
   thread_unlock(thread);

   thread_wakeup(&thread->wake_active);
   wake_unlock(thread);
   splx(s);

   return;
  }
 }

 thread_unlock(thread);
 wake_unlock(thread);
 splx(s);
}

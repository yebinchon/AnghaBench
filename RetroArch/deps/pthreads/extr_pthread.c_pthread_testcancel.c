
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ pthread_t ;
struct TYPE_2__ {scalar_t__ state; scalar_t__ cancelState; int cancelLock; } ;
typedef TYPE_1__ pte_thread_t ;


 int PTE_EPS_CANCEL ;
 scalar_t__ PTHREAD_CANCEL_DISABLE ;
 scalar_t__ PThreadStateCancelPending ;
 scalar_t__ PThreadStateCanceling ;
 int pte_throw (int ) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 scalar_t__ pthread_self () ;

void pthread_testcancel (void)
{
   pthread_t self = pthread_self ();
   pte_thread_t * sp = (pte_thread_t *) self;

   if (sp == ((void*)0))
      return;






   if (sp->state != PThreadStateCancelPending)
      return;

   (void) pthread_mutex_lock (&sp->cancelLock);

   if (sp->cancelState != PTHREAD_CANCEL_DISABLE)
   {
      sp->state = PThreadStateCanceling;
      sp->cancelState = PTHREAD_CANCEL_DISABLE;

      (void) pthread_mutex_unlock (&sp->cancelLock);
      pte_throw (PTE_EPS_CANCEL);
   }

   (void) pthread_mutex_unlock (&sp->cancelLock);
}

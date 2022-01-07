
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int * pthread_t ;
struct TYPE_2__ {scalar_t__ cancelType; scalar_t__ cancelState; scalar_t__ state; int cancelLock; int threadId; } ;
typedef TYPE_1__ pte_thread_t ;


 int ENOMEM ;
 int EPERM ;
 int ESRCH ;
 int PTE_EPS_CANCEL ;
 scalar_t__ PTE_OS_OK ;
 scalar_t__ PTHREAD_CANCEL_ASYNCHRONOUS ;
 scalar_t__ PTHREAD_CANCEL_DISABLE ;
 scalar_t__ PTHREAD_CANCEL_ENABLE ;
 scalar_t__ PThreadStateCancelPending ;
 scalar_t__ PThreadStateCanceling ;
 scalar_t__ pte_osThreadCancel (int ) ;
 int pte_throw (int ) ;
 int pthread_equal (int *,int *) ;
 int pthread_kill (int *,int ) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int * pthread_self () ;

int pthread_cancel (pthread_t thread)
{
   int result;
   int cancel_self;
   pthread_t self;
   pte_thread_t * tp;

   result = pthread_kill (thread, 0);

   if (0 != result)
      return result;

   if ((self = pthread_self ()) == ((void*)0))
      return ENOMEM;
   cancel_self = pthread_equal (thread, self);

   tp = (pte_thread_t *) thread;




   (void) pthread_mutex_lock (&tp->cancelLock);

   if (tp->cancelType == PTHREAD_CANCEL_ASYNCHRONOUS
         && tp->cancelState == PTHREAD_CANCEL_ENABLE
         && tp->state < PThreadStateCanceling)
   {
      if (cancel_self)
      {
         tp->state = PThreadStateCanceling;
         tp->cancelState = PTHREAD_CANCEL_DISABLE;

         (void) pthread_mutex_unlock (&tp->cancelLock);
         pte_throw (PTE_EPS_CANCEL);


      }
      else
      {
         (void) pthread_mutex_unlock (&tp->cancelLock);

         result = EPERM;

      }
   }
   else
   {



      if (tp->state < PThreadStateCancelPending)
      {
         tp->state = PThreadStateCancelPending;

         if (pte_osThreadCancel(tp->threadId) != PTE_OS_OK)
            result = ESRCH;
      }
      else if (tp->state >= PThreadStateCanceling)
         result = ESRCH;

      (void) pthread_mutex_unlock (&tp->cancelLock);
   }

   return (result);
}

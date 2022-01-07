
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ pthread_t ;
struct TYPE_2__ {scalar_t__ cancelState; int cancelLock; int state; } ;
typedef TYPE_1__ pte_thread_t ;
typedef int pte_osSemaphoreHandle ;
typedef int pte_osResult ;


 int EINVAL ;
 int ETIMEDOUT ;
 int PTE_EPS_CANCEL ;



 scalar_t__ PTHREAD_CANCEL_DISABLE ;
 scalar_t__ PTHREAD_CANCEL_ENABLE ;
 int PThreadStateCanceling ;
 int pte_osSemaphoreCancellablePend (int ,unsigned int*) ;
 int pte_osSemaphorePend (int ,unsigned int*) ;
 int pte_throw (int ) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 scalar_t__ pthread_self () ;

int pte_cancellable_wait (pte_osSemaphoreHandle semHandle, unsigned int* timeout)
{
   pte_osResult osResult;
   int result = EINVAL;
   int cancelEnabled = 0;
   pthread_t self = pthread_self();
   pte_thread_t *sp = (pte_thread_t *) self;

   if (sp)
   {



      if (sp->cancelState == PTHREAD_CANCEL_ENABLE)
         cancelEnabled = 1;
   }


   if (cancelEnabled)
      osResult = pte_osSemaphoreCancellablePend(semHandle, timeout);
   else
      osResult = pte_osSemaphorePend(semHandle, timeout);

   switch (osResult)
   {
      case 129:
         result = 0;
         break;

      case 128:
         result = ETIMEDOUT;
         break;

      case 130:
         if (sp)
         {




            (void) pthread_mutex_lock (&sp->cancelLock);
            if (sp->state < PThreadStateCanceling)
            {
               sp->state = PThreadStateCanceling;
               sp->cancelState = PTHREAD_CANCEL_DISABLE;
               (void) pthread_mutex_unlock (&sp->cancelLock);
               pte_throw (PTE_EPS_CANCEL);


            }
            (void) pthread_mutex_unlock (&sp->cancelLock);
         }
         break;
      default:
         result = EINVAL;
   }

   return (result);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ pthread_t ;
struct TYPE_2__ {int cancelType; scalar_t__ cancelState; int cancelLock; int state; int threadId; } ;
typedef TYPE_1__ pte_thread_t ;


 int EINVAL ;
 int EPERM ;
 int PTE_EPS_CANCEL ;
 scalar_t__ PTE_OS_INTERRUPTED ;
 int PTHREAD_CANCEL_ASYNCHRONOUS ;
 int PTHREAD_CANCEL_DEFERRED ;
 scalar_t__ PTHREAD_CANCEL_DISABLE ;
 scalar_t__ PTHREAD_CANCEL_ENABLE ;
 int PThreadStateCanceling ;
 scalar_t__ pte_osThreadCheckCancel (int ) ;
 int pte_throw (int ) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 scalar_t__ pthread_self () ;

int pthread_setcanceltype (int type, int *oldtype)
{
   int result = 0;
   pthread_t self = pthread_self ();
   pte_thread_t * sp = (pte_thread_t *) self;


   if (type == PTHREAD_CANCEL_ASYNCHRONOUS)
   {



      return EPERM;
   }


   if (sp == ((void*)0)
         || (type != PTHREAD_CANCEL_DEFERRED
            && type != PTHREAD_CANCEL_ASYNCHRONOUS))
      return EINVAL;




   (void) pthread_mutex_lock (&sp->cancelLock);

   if (oldtype != ((void*)0))
      *oldtype = sp->cancelType;

   sp->cancelType = type;





   if (sp->cancelState == PTHREAD_CANCEL_ENABLE
         && (type == PTHREAD_CANCEL_ASYNCHRONOUS)
         && (pte_osThreadCheckCancel(sp->threadId) == PTE_OS_INTERRUPTED) )
   {
      sp->state = PThreadStateCanceling;
      sp->cancelState = PTHREAD_CANCEL_DISABLE;
      (void) pthread_mutex_unlock (&sp->cancelLock);
      pte_throw (PTE_EPS_CANCEL);


   }

   (void) pthread_mutex_unlock (&sp->cancelLock);

   return (result);
}

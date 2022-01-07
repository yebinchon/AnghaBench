
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* pthread_t ;
struct TYPE_5__ {void* threadLock; void* cancelLock; int cancelType; int cancelState; int detachState; int sched_priority; scalar_t__ x; } ;
typedef TYPE_1__ pte_thread_t ;


 int PTHREAD_CANCEL_DEFERRED ;
 int PTHREAD_CANCEL_ENABLE ;
 int PTHREAD_CREATE_JOINABLE ;
 void* PTHREAD_MUTEX_INITIALIZER ;
 scalar_t__ calloc (int,int) ;
 int pte_osThreadGetMinPriority () ;
 TYPE_1__* pte_threadReusePop () ;

pthread_t pte_new (void)
{
   pthread_t nil = ((void*)0);
   pte_thread_t * tp = ((void*)0);




   pthread_t t = pte_threadReusePop ();

   if (((void*)0) != t)
      tp = (pte_thread_t *) t;
   else
   {

      tp = (pte_thread_t *) calloc (1, sizeof(pte_thread_t));

      if (tp == ((void*)0))
         return nil;


      t = tp;
      tp->x = 0;
   }


   tp->sched_priority = pte_osThreadGetMinPriority();

   tp->detachState = PTHREAD_CREATE_JOINABLE;
   tp->cancelState = PTHREAD_CANCEL_ENABLE;
   tp->cancelType = PTHREAD_CANCEL_DEFERRED;
   tp->cancelLock = PTHREAD_MUTEX_INITIALIZER;
   tp->threadLock = PTHREAD_MUTEX_INITIALIZER;

   return t;

}

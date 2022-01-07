
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ pthread_t ;
struct TYPE_2__ {scalar_t__ x; scalar_t__ detachState; scalar_t__ state; int threadId; int cancelLock; } ;
typedef TYPE_1__ pte_thread_t ;


 int EINVAL ;
 int ESRCH ;
 unsigned char PTE_FALSE ;
 unsigned char PTE_TRUE ;
 scalar_t__ PTHREAD_CREATE_DETACHED ;
 scalar_t__ PThreadStateLast ;
 int pte_osMutexLock (int ) ;
 int pte_osMutexUnlock (int ) ;
 int pte_osThreadWaitForEnd (int ) ;
 int pte_threadDestroy (scalar_t__) ;
 int pte_thread_reuse_lock ;
 scalar_t__ pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

int pthread_detach (pthread_t thread)
{
   int result;
   unsigned char destroyIt = PTE_FALSE;
   pte_thread_t * tp = (pte_thread_t *) thread;

   pte_osMutexLock (pte_thread_reuse_lock);

   if (((void*)0) == tp
         || ((pte_thread_t*)thread)->x != tp->x)
      result = ESRCH;
   else if (PTHREAD_CREATE_DETACHED == tp->detachState)
      result = EINVAL;
   else
   {





      result = 0;

      if (pthread_mutex_lock (&tp->cancelLock) == 0)
      {
         if (tp->state != PThreadStateLast)
            tp->detachState = PTHREAD_CREATE_DETACHED;
         else if (tp->detachState != PTHREAD_CREATE_DETACHED)
         {



            destroyIt = PTE_TRUE;
         }
         (void) pthread_mutex_unlock (&tp->cancelLock);
      }
      else
      {

         result = ESRCH;
      }
   }

   pte_osMutexUnlock(pte_thread_reuse_lock);

   if (result == 0)
   {


      if (destroyIt)
      {



         pte_osThreadWaitForEnd(tp->threadId);

         pte_threadDestroy (thread);
      }
   }

   return (result);
}

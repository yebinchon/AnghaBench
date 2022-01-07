
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int * pthread_t ;
struct TYPE_2__ {scalar_t__ x; scalar_t__ detachState; void* exitStatus; int threadId; } ;
typedef TYPE_1__ pte_thread_t ;


 int EDEADLK ;
 int EINVAL ;
 int ENOENT ;
 int ESRCH ;
 int PTE_OS_INTERRUPTED ;
 int PTE_OS_OK ;
 scalar_t__ PTHREAD_CREATE_DETACHED ;
 int pte_osMutexLock (int ) ;
 int pte_osMutexUnlock (int ) ;
 int pte_osThreadWaitForEnd (int ) ;
 int pte_thread_reuse_lock ;
 int pthread_detach (int *) ;
 scalar_t__ pthread_equal (int *,int *) ;
 int * pthread_self () ;

int pthread_join (pthread_t thread, void **value_ptr)
{
   int result;
   pthread_t self;
   pte_thread_t * tp = (pte_thread_t *) thread;

   pte_osMutexLock (pte_thread_reuse_lock);

   if (((void*)0) == tp
         || ((pte_thread_t*)thread)->x != tp->x)
      result = ESRCH;
   else if (PTHREAD_CREATE_DETACHED == tp->detachState)
      result = EINVAL;
   else
      result = 0;

   pte_osMutexUnlock(pte_thread_reuse_lock);

   if (result == 0)
   {



      self = pthread_self();

      if (((void*)0) == self)
         result = ENOENT;
      else if (pthread_equal (self, thread))
         result = EDEADLK;
      else
      {
         result = pte_osThreadWaitForEnd(tp->threadId);

         if (PTE_OS_OK == result)
         {
            if (value_ptr != ((void*)0))
               *value_ptr = tp->exitStatus;






            result = pthread_detach (thread);
         }

         else if (result == PTE_OS_INTERRUPTED)
            result = 0;
         else
            result = ESRCH;
      }
   }

   return (result);
}

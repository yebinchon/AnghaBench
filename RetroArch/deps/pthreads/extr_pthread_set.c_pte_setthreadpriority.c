
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ pthread_t ;
struct TYPE_2__ {int sched_priority; int threadLock; int threadId; } ;
typedef TYPE_1__ pte_thread_t ;


 int EINVAL ;
 scalar_t__ pte_osThreadSetPriority (int ,int) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int sched_get_priority_max (int) ;
 int sched_get_priority_min (int) ;

int
pte_setthreadpriority (pthread_t thread, int policy, int priority)
{
   int prio;
   int result;
   pte_thread_t * tp = (pte_thread_t *) thread;

   prio = priority;


   if (prio < sched_get_priority_min (policy) ||
         prio > sched_get_priority_max (policy))
      return EINVAL;

   result = pthread_mutex_lock (&tp->threadLock);

   if (0 == result)
   {


      if (0 != pte_osThreadSetPriority(tp->threadId, prio))
         result = EINVAL;
      else
      {




         tp->sched_priority = priority;
      }

      (void) pthread_mutex_unlock (&tp->threadLock);
   }

   return result;
}

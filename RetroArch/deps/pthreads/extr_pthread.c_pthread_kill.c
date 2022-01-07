
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ pthread_t ;
struct TYPE_2__ {scalar_t__ x; scalar_t__ threadId; } ;
typedef TYPE_1__ pte_thread_t ;


 int EINVAL ;
 int ESRCH ;
 int pte_osMutexLock (int ) ;
 int pte_osMutexUnlock (int ) ;
 int pte_thread_reuse_lock ;

int pthread_kill (pthread_t thread, int sig)
{
   int result = 0;
   pte_thread_t * tp;

   pte_osMutexLock (pte_thread_reuse_lock);

   tp = (pte_thread_t *) thread;

   if (((void*)0) == tp
         || ((pte_thread_t*)thread)->x != tp->x
         || 0 == tp->threadId)
      result = ESRCH;

   pte_osMutexUnlock(pte_thread_reuse_lock);




   if (0 == result && 0 != sig)
      result = EINVAL;

   return result;
}

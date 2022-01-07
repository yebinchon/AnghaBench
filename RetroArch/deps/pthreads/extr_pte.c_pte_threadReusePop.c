
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* pthread_t ;
struct TYPE_4__ {int * prevReuse; } ;
typedef TYPE_1__ pte_thread_t ;


 void* PTE_THREAD_REUSE_EMPTY ;
 int pte_osMutexLock (int ) ;
 int pte_osMutexUnlock (int ) ;
 void* pte_threadReuseBottom ;
 void* pte_threadReuseTop ;
 int pte_thread_reuse_lock ;

pthread_t
pte_threadReusePop (void)
{
   pthread_t t = ((void*)0);

   pte_osMutexLock (pte_thread_reuse_lock);

   if (PTE_THREAD_REUSE_EMPTY != pte_threadReuseTop)
   {
      pte_thread_t * tp;

      tp = pte_threadReuseTop;

      pte_threadReuseTop = tp->prevReuse;

      if (PTE_THREAD_REUSE_EMPTY == pte_threadReuseTop)
         pte_threadReuseBottom = PTE_THREAD_REUSE_EMPTY;

      tp->prevReuse = ((void*)0);

      t = tp;
   }

   pte_osMutexUnlock(pte_thread_reuse_lock);

   return t;

}

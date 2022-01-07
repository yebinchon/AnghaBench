
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* prevReuse; } ;
typedef TYPE_1__ pte_thread_t ;


 scalar_t__ PTE_FALSE ;
 TYPE_1__* PTE_THREAD_REUSE_EMPTY ;
 int free (TYPE_1__*) ;
 int * pte_cleanupKey ;
 int pte_osMutexLock (int ) ;
 int pte_osMutexUnlock (int ) ;
 scalar_t__ pte_processInitialized ;
 int * pte_selfThreadKey ;
 TYPE_1__* pte_threadReuseTop ;
 int pte_thread_reuse_lock ;
 int pthread_key_delete (int *) ;

void pthread_terminate(void)
{
   pte_thread_t * tp, * tpNext;

   if (!pte_processInitialized)
      return;

   if (pte_selfThreadKey != ((void*)0))
   {



      pthread_key_delete (pte_selfThreadKey);

      pte_selfThreadKey = ((void*)0);
   }

   if (pte_cleanupKey != ((void*)0))
   {



      pthread_key_delete (pte_cleanupKey);

      pte_cleanupKey = ((void*)0);
   }

   pte_osMutexLock (pte_thread_reuse_lock);


   tp = pte_threadReuseTop;
   while (tp != PTE_THREAD_REUSE_EMPTY)
   {
      tpNext = tp->prevReuse;
      free (tp);
      tp = tpNext;
   }

   pte_osMutexUnlock(pte_thread_reuse_lock);

   pte_processInitialized = PTE_FALSE;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* prevReuse; } ;
typedef TYPE_1__ ptw32_thread_t ;
typedef int ptw32_mcs_local_node_t ;


 scalar_t__ PTW32_FALSE ;
 TYPE_1__* PTW32_THREAD_REUSE_EMPTY ;
 int free (TYPE_1__*) ;
 int pthread_key_delete (int *) ;
 int * ptw32_cleanupKey ;
 int ptw32_mcs_lock_acquire (int *,int *) ;
 int ptw32_mcs_lock_release (int *) ;
 scalar_t__ ptw32_processInitialized ;
 int * ptw32_selfThreadKey ;
 TYPE_1__* ptw32_threadReuseTop ;
 int ptw32_thread_reuse_lock ;

void
ptw32_processTerminate (void)
{
  if (ptw32_processInitialized)
    {
      ptw32_thread_t * tp, * tpNext;
      ptw32_mcs_local_node_t node;

      if (ptw32_selfThreadKey != ((void*)0))
 {



   pthread_key_delete (ptw32_selfThreadKey);

   ptw32_selfThreadKey = ((void*)0);
 }

      if (ptw32_cleanupKey != ((void*)0))
 {



   pthread_key_delete (ptw32_cleanupKey);

   ptw32_cleanupKey = ((void*)0);
 }

      ptw32_mcs_lock_acquire(&ptw32_thread_reuse_lock, &node);

      tp = ptw32_threadReuseTop;
      while (tp != PTW32_THREAD_REUSE_EMPTY)
 {
   tpNext = tp->prevReuse;
   free (tp);
   tp = tpNext;
 }

      ptw32_mcs_lock_release(&node);

      ptw32_processInitialized = PTW32_FALSE;
    }

}

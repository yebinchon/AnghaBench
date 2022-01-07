
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* pthread_t ;
struct TYPE_8__ {struct TYPE_8__* prevReuse; scalar_t__ x; } ;
typedef TYPE_1__ pte_thread_t ;


 scalar_t__ PTE_THREAD_ID_REUSE_INCREMENT ;
 TYPE_1__* PTE_THREAD_REUSE_EMPTY ;
 int memset (TYPE_1__*,int ,int) ;
 int pte_osMutexLock (int ) ;
 int pte_osMutexUnlock (int ) ;
 TYPE_1__* pte_threadReuseBottom ;
 TYPE_1__* pte_threadReuseTop ;
 int pte_thread_reuse_lock ;

void pte_threadReusePush (pthread_t thread)
{
   pte_thread_t * tp = (pte_thread_t *) thread;
   pthread_t t;

   pte_osMutexLock (pte_thread_reuse_lock);

   t = tp;
   memset(tp, 0, sizeof(pte_thread_t));


   tp = t;





   tp->x++;


   tp->prevReuse = PTE_THREAD_REUSE_EMPTY;

   if (PTE_THREAD_REUSE_EMPTY != pte_threadReuseBottom)
      pte_threadReuseBottom->prevReuse = tp;
   else
      pte_threadReuseTop = tp;

   pte_threadReuseBottom = tp;

   pte_osMutexUnlock(pte_thread_reuse_lock);
}

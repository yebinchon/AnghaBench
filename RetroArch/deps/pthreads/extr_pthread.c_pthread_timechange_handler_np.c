
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* pthread_cond_t ;
struct TYPE_4__ {struct TYPE_4__* next; } ;


 scalar_t__ EAGAIN ;
 TYPE_1__* pte_cond_list_head ;
 int pte_cond_list_lock ;
 int pte_osMutexLock (int ) ;
 int pte_osMutexUnlock (int ) ;
 int pthread_cond_broadcast (TYPE_1__**) ;

void *
pthread_timechange_handler_np (void *arg)
{
   int result = 0;
   pthread_cond_t cv;

   pte_osMutexLock (pte_cond_list_lock);

   cv = pte_cond_list_head;

   while (cv != ((void*)0) && 0 == result)
   {
      result = pthread_cond_broadcast (&cv);
      cv = cv->next;
   }

   pte_osMutexUnlock(pte_cond_list_lock);

   return (void *) (result != 0 ? EAGAIN : 0);
}

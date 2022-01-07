
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* resultPtr; TYPE_2__* sem; } ;
typedef TYPE_1__ sem_timedwait_cleanup_args_t ;
typedef TYPE_2__* sem_t ;
struct TYPE_4__ {int lock; int value; int sem; } ;


 scalar_t__ PTE_OS_OK ;
 scalar_t__ pte_osSemaphorePend (int ,unsigned int*) ;
 scalar_t__ pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static void pte_sem_timedwait_cleanup (void * args)
{
   sem_timedwait_cleanup_args_t * a = (sem_timedwait_cleanup_args_t *)args;
   sem_t s = a->sem;

   if (pthread_mutex_lock (&s->lock) == 0)
   {
      unsigned int timeout = 0;
      if (pte_osSemaphorePend(s->sem, &timeout) == PTE_OS_OK)
      {

         *(a->resultPtr) = 0;
      }
      else
      {

         s->value++;






      }
      (void) pthread_mutex_unlock (&s->lock);
   }
}

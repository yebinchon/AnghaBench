
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef TYPE_1__* sem_t ;
struct TYPE_2__ {int lock; int value; int sem; } ;


 scalar_t__ PTE_OS_OK ;
 scalar_t__ pte_osSemaphorePend (int ,unsigned int*) ;
 scalar_t__ pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static void pte_sem_wait_cleanup(void * sem)
{
   sem_t s = (sem_t) sem;
   unsigned int timeout;

   if (pthread_mutex_lock (&s->lock) == 0)
   {







      timeout = 0;
      if (pte_osSemaphorePend(s->sem, &timeout) != PTE_OS_OK)
      {
         ++s->value;






      }
      (void) pthread_mutex_unlock (&s->lock);
   }
}

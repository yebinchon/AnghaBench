
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ semaphore; int state; } ;
typedef TYPE_1__ pthread_once_t ;
typedef int pte_osSemaphoreHandle ;


 int PTE_ATOMIC_EXCHANGE (int *,int ) ;
 scalar_t__ PTE_ATOMIC_EXCHANGE_ADD (int*,long) ;
 int PTE_ONCE_INIT ;
 int pte_osSemaphorePost (int ,int) ;

__attribute__((used)) static void pte_once_init_routine_cleanup(void * arg)
{
   pthread_once_t * once_control = (pthread_once_t *) arg;

   (void) PTE_ATOMIC_EXCHANGE(&once_control->state,PTE_ONCE_INIT);


   if (PTE_ATOMIC_EXCHANGE_ADD((int*)&once_control->semaphore, 0L))
      pte_osSemaphorePost((pte_osSemaphoreHandle) once_control->semaphore, 1);
}

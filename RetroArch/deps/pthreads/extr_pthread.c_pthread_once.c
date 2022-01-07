
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int state; scalar_t__ semaphore; int numSemaphoreUsers; } ;
typedef TYPE_1__ pthread_once_t ;
typedef scalar_t__ pte_osSemaphoreHandle ;


 int EINVAL ;
 int PTE_ATOMIC_COMPARE_EXCHANGE (int*,int,int) ;
 scalar_t__ PTE_ATOMIC_DECREMENT (int *) ;
 scalar_t__ PTE_ATOMIC_EXCHANGE (int*,int) ;
 scalar_t__ PTE_ATOMIC_EXCHANGE_ADD (int*,long) ;
 int PTE_ATOMIC_INCREMENT (int *) ;
 int PTE_ONCE_DONE ;
 int PTE_ONCE_INIT ;
 scalar_t__ PTE_ONCE_STARTED ;
 int pte_once_init_routine_cleanup ;
 int pte_osSemaphoreCreate (int ,scalar_t__*) ;
 int pte_osSemaphoreDelete (scalar_t__) ;
 int pte_osSemaphorePend (scalar_t__,int *) ;
 int pte_osSemaphorePost (scalar_t__,int ) ;
 int pthread_cleanup_pop (int ) ;
 int pthread_cleanup_push (int ,void*) ;
 void stub1 () ;

int pthread_once (pthread_once_t * once_control, void (*init_routine) (void))
{
   int result;
   int state;
   pte_osSemaphoreHandle sema;

   if (once_control == ((void*)0) || init_routine == ((void*)0))
   {
      result = EINVAL;
      goto FAIL0;
   }
   else
   {
      result = 0;
   }

   while ((state =
            PTE_ATOMIC_COMPARE_EXCHANGE(&once_control->state,
               PTE_ONCE_STARTED,
               PTE_ONCE_INIT))
         != PTE_ONCE_DONE)
   {
      if (PTE_ONCE_INIT == state)
      {


         pthread_cleanup_push(pte_once_init_routine_cleanup, (void *) once_control);
         (*init_routine)();
         pthread_cleanup_pop(0);

         (void) PTE_ATOMIC_EXCHANGE(&once_control->state,PTE_ONCE_DONE);





         if (PTE_ATOMIC_EXCHANGE_ADD((int*)&once_control->semaphore, 0L))
            pte_osSemaphorePost((pte_osSemaphoreHandle) once_control->semaphore,once_control->numSemaphoreUsers);
      }
      else
      {
         PTE_ATOMIC_INCREMENT(&once_control->numSemaphoreUsers);

         if (!PTE_ATOMIC_EXCHANGE_ADD((int*)&once_control->semaphore, 0L))
         {
            pte_osSemaphoreCreate(0, (pte_osSemaphoreHandle*) &sema);

            if (PTE_ATOMIC_COMPARE_EXCHANGE((int *) &once_control->semaphore,
                     (int) sema,
                     0))
               pte_osSemaphoreDelete((pte_osSemaphoreHandle)sema);
         }





         if (PTE_ATOMIC_EXCHANGE_ADD(&once_control->state, 0L) == PTE_ONCE_STARTED)
            pte_osSemaphorePend((pte_osSemaphoreHandle) once_control->semaphore,((void*)0));

         if (0 == PTE_ATOMIC_DECREMENT(&once_control->numSemaphoreUsers))
         {

            if ((sema =
                     (pte_osSemaphoreHandle) PTE_ATOMIC_EXCHANGE((int *) &once_control->semaphore,0)))
               pte_osSemaphoreDelete(sema);
         }
      }
   }






FAIL0:
   return (result);
}

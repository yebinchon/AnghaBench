
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* sem_t ;
typedef scalar_t__ pte_osResult ;
struct TYPE_4__ {scalar_t__ value; int lock; int sem; } ;


 int EBUSY ;
 int EINVAL ;
 scalar_t__ PTE_OS_OK ;
 scalar_t__ SEM_VALUE_MAX ;
 int errno ;
 int free (TYPE_1__*) ;
 scalar_t__ pte_osSemaphoreDelete (int ) ;
 int pte_osThreadSleep (int) ;
 int pthread_mutex_destroy (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

int sem_destroy (sem_t * sem)
{
   int result = 0;
   sem_t s = ((void*)0);

   if (sem == ((void*)0) || *sem == ((void*)0))
      result = EINVAL;
   else
   {
      s = *sem;

      if ((result = pthread_mutex_lock (&s->lock)) == 0)
      {
         if (s->value < 0)
         {
            (void) pthread_mutex_unlock (&s->lock);
            result = EBUSY;
         }
         else
         {

            pte_osResult osResult = pte_osSemaphoreDelete(s->sem);

            if (osResult != PTE_OS_OK)
            {
               (void) pthread_mutex_unlock (&s->lock);
               result = EINVAL;
            }
            else
            {
               *sem = ((void*)0);



               s->value = SEM_VALUE_MAX;

               (void) pthread_mutex_unlock (&s->lock);

               do
               {




                  pte_osThreadSleep(1);
               }
               while (pthread_mutex_destroy (&s->lock) == EBUSY);
            }
         }
      }
   }

   if (result != 0)
   {
      errno = result;
      return -1;
   }

   free (s);

   return 0;
}

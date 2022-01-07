
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* pthread_mutex_t ;
struct TYPE_7__ {scalar_t__ kind; int recursive_count; int handle; } ;


 int EBUSY ;
 TYPE_1__* PTHREAD_ERRORCHECK_MUTEX_INITIALIZER ;
 scalar_t__ PTHREAD_MUTEX_RECURSIVE ;
 int free (TYPE_1__*) ;
 int pte_mutex_test_init_lock ;
 int pte_osMutexLock (int ) ;
 int pte_osMutexUnlock (int ) ;
 int pte_osSemaphoreDelete (int ) ;
 int pthread_mutex_trylock (TYPE_1__**) ;
 int pthread_mutex_unlock (TYPE_1__**) ;

int pthread_mutex_destroy (pthread_mutex_t * mutex)
{
   int result = 0;
   pthread_mutex_t mx;
   if (*mutex < PTHREAD_ERRORCHECK_MUTEX_INITIALIZER)
   {
      mx = *mutex;

      result = pthread_mutex_trylock (&mx);





      if (result == 0)
      {
         if (mx->kind != PTHREAD_MUTEX_RECURSIVE || 1 == mx->recursive_count)
         {
            *mutex = ((void*)0);

            result = pthread_mutex_unlock (&mx);

            if (result == 0)
            {
               pte_osSemaphoreDelete(mx->handle);

               free(mx);

            }
            else
            {



               *mutex = mx;
            }
         }
         else
         {



            mx->recursive_count--;
            result = EBUSY;
         }
      }
   }
   else
   {




      pte_osMutexLock (pte_mutex_test_init_lock);





      if (*mutex >= PTHREAD_ERRORCHECK_MUTEX_INITIALIZER)
      {






         *mutex = ((void*)0);
      }
      else
      {




         result = EBUSY;
      }

      pte_osMutexUnlock(pte_mutex_test_init_lock);

   }

   return (result);
}

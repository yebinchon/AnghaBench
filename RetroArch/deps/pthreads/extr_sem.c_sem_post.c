
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* sem_t ;
typedef scalar_t__ pte_osResult ;
struct TYPE_3__ {scalar_t__ value; int lock; int sem; } ;


 int EINVAL ;
 int ERANGE ;
 scalar_t__ PTE_OS_OK ;
 scalar_t__ SEM_VALUE_MAX ;
 int errno ;
 scalar_t__ pte_osSemaphorePost (int ,int) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

int
sem_post (sem_t * sem)
{
   int result = 0;
   sem_t s = *sem;

   if (s == ((void*)0))
      result = EINVAL;
   else if ((result = pthread_mutex_lock (&s->lock)) == 0)
   {


      if (*sem == ((void*)0))
      {
         (void) pthread_mutex_unlock (&s->lock);
         result = EINVAL;
         return -1;
      }

      if (s->value < SEM_VALUE_MAX)
      {
         pte_osResult osResult = pte_osSemaphorePost(s->sem, 1);

         if (++s->value <= 0
               && (osResult != PTE_OS_OK))
         {
            s->value--;
            result = EINVAL;
         }

      }
      else
         result = ERANGE;

      (void) pthread_mutex_unlock (&s->lock);
   }

   if (result != 0)
   {
      errno = result;
      return -1;
   }

   return 0;
}

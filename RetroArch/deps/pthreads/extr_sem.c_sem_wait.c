
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* sem_t ;
struct TYPE_3__ {int value; int sem; int lock; } ;


 void* EINVAL ;
 int errno ;
 int pte_cancellable_wait (int ,int *) ;
 int pte_sem_wait_cleanup ;
 int pthread_cleanup_pop (int) ;
 int pthread_cleanup_push (int ,void*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int pthread_testcancel () ;

int sem_wait (sem_t * sem)
{
   int result = 0;
   sem_t s = *sem;

   pthread_testcancel();

   if (s == ((void*)0))
   {
      result = EINVAL;
   }
   else
   {
      if ((result = pthread_mutex_lock (&s->lock)) == 0)
      {
         int v;



         if (*sem == ((void*)0))
         {
            (void) pthread_mutex_unlock (&s->lock);
            errno = EINVAL;
            return -1;
         }

         v = --s->value;
         (void) pthread_mutex_unlock (&s->lock);

         if (v < 0)
         {

            pthread_cleanup_push(pte_sem_wait_cleanup, (void *) s);
            result = pte_cancellable_wait(s->sem,((void*)0));

            pthread_cleanup_pop(result);
         }
      }

   }

   if (result != 0)
   {
      errno = result;
      return -1;
   }

   return 0;

}

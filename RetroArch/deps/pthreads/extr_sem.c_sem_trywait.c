
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* sem_t ;
struct TYPE_3__ {scalar_t__ value; int lock; } ;


 int EAGAIN ;
 void* EINVAL ;
 int errno ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

int sem_trywait (sem_t * sem)
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
         errno = EINVAL;
         return -1;
      }

      if (s->value > 0)
         s->value--;
      else
         result = EAGAIN;

      (void) pthread_mutex_unlock (&s->lock);
   }

   if (result != 0)
   {
      errno = result;
      return -1;
   }

   return 0;
}

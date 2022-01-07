
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* sem_t ;
struct TYPE_3__ {long value; int lock; } ;


 int EINVAL ;
 int errno ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

int
sem_getvalue (sem_t * sem, int *sval)
{
   if (sem == ((void*)0) || *sem == ((void*)0) || sval == ((void*)0))
   {
      errno = EINVAL;
      return -1;
   }
   else
   {
      long value;
      register sem_t s = *sem;
      int result = 0;

      if ((result = pthread_mutex_lock(&s->lock)) == 0)
      {
         if (*sem == ((void*)0))
         {
            (void) pthread_mutex_unlock (&s->lock);
            errno = EINVAL;
            return -1;
         }

         value = s->value;
         (void) pthread_mutex_unlock(&s->lock);
         *sval = value;
      }

      return result;
   }
}

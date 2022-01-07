
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* sem_t ;
struct TYPE_3__ {int value; int leftToUnblock; int lock; int sem; } ;


 int EINVAL ;
 int ERANGE ;
 scalar_t__ ReleaseSemaphore (int ,long,int ) ;
 int SEM_VALUE_MAX ;
 scalar_t__ SetEvent (int ) ;
 int errno ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

int
sem_post_multiple (sem_t * sem, int count)
{
  int result = 0;
  long waiters;
  sem_t s = *sem;

  if (s == ((void*)0) || count <= 0)
    {
      result = EINVAL;
    }
  else if ((result = pthread_mutex_lock (&s->lock)) == 0)
    {


      if (*sem == ((void*)0))
        {
          (void) pthread_mutex_unlock (&s->lock);
          result = EINVAL;
          return -1;
        }

      if (s->value <= (SEM_VALUE_MAX - count))
 {
   waiters = -s->value;
   s->value += count;
   if (waiters > 0)
     {
       if (ReleaseSemaphore (s->sem, (waiters<=count)?waiters:count, 0))
  {

  }

       else
  {
    s->value -= count;
    result = EINVAL;
  }
     }
 }
      else
 {
   result = ERANGE;
 }
      (void) pthread_mutex_unlock (&s->lock);
    }

  if (result != 0)
    {
      errno = result;
      return -1;
    }

  return 0;

}

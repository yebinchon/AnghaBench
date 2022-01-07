
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* sem_t ;
struct TYPE_3__ {int value; scalar_t__ leftToUnblock; int lock; int sem; } ;


 void* EINVAL ;
 int INFINITE ;
 int SetEvent (int ) ;
 scalar_t__ WAIT_OBJECT_0 ;
 scalar_t__ WaitForSingleObject (int ,int ) ;
 int errno ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

int
ptw32_semwait (sem_t * sem)
{
  int result = 0;
  sem_t s = *sem;

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

              if (WaitForSingleObject (s->sem, INFINITE) == WAIT_OBJECT_0)
  {
    return 0;
  }
            }
          else
     {
       return 0;
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

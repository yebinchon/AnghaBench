
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* sem_t ;
struct TYPE_4__ {unsigned int value; scalar_t__ sem; int lock; scalar_t__ leftToUnblock; } ;


 scalar_t__ CreateEvent (int *,int ,int ,int *) ;
 scalar_t__ CreateSemaphore (int *,long,long,int *) ;
 int EINVAL ;
 int ENOMEM ;
 int ENOSPC ;
 int EPERM ;
 int PTW32_FALSE ;
 scalar_t__ SEM_VALUE_MAX ;
 scalar_t__ calloc (int,int) ;
 int errno ;
 int free (TYPE_1__*) ;
 int pthread_mutex_destroy (int *) ;
 scalar_t__ pthread_mutex_init (int *,int *) ;

int
sem_init (sem_t * sem, int pshared, unsigned int value)
{
  int result = 0;
  sem_t s = ((void*)0);

  if (pshared != 0)
    {




      result = EPERM;
    }
  else if (value > (unsigned int)SEM_VALUE_MAX)
    {
      result = EINVAL;
    }
  else
    {
      s = (sem_t) calloc (1, sizeof (*s));

      if (((void*)0) == s)
 {
   result = ENOMEM;
 }
      else
 {

   s->value = value;
   if (pthread_mutex_init(&s->lock, ((void*)0)) == 0)
     {
       if ((s->sem = CreateSemaphore (((void*)0),
          (long) 0,
          (long) SEM_VALUE_MAX,
          ((void*)0))) == 0)
  {
    (void) pthread_mutex_destroy(&s->lock);
    result = ENOSPC;
  }



     }
   else
     {
       result = ENOSPC;
     }

   if (result != 0)
     {
       free(s);
     }
 }
    }

  if (result != 0)
    {
      errno = result;
      return -1;
    }

  *sem = s;

  return 0;

}

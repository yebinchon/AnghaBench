
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* pthread_spinlock_t ;
struct TYPE_5__ {int mutex; } ;
struct TYPE_6__ {TYPE_1__ u; int interlock; } ;
typedef int PTW32_INTERLOCKED_LONGPTR ;
typedef int PTW32_INTERLOCKED_LONG ;


 int EINVAL ;
 int EPERM ;
 TYPE_2__* PTHREAD_SPINLOCK_INITIALIZER ;
 scalar_t__ PTW32_INTERLOCKED_COMPARE_EXCHANGE_LONG (int ,int ,int ) ;



 int pthread_mutex_unlock (int *) ;

int
pthread_spin_unlock (pthread_spinlock_t * lock)
{
  register pthread_spinlock_t s;

  if (((void*)0) == lock || ((void*)0) == *lock)
    {
      return (EINVAL);
    }

  s = *lock;

  if (s == PTHREAD_SPINLOCK_INITIALIZER)
    {
      return EPERM;
    }

  switch ((long)
   PTW32_INTERLOCKED_COMPARE_EXCHANGE_LONG ((PTW32_INTERLOCKED_LONGPTR) &s->interlock,
           (PTW32_INTERLOCKED_LONG) 129,
           (PTW32_INTERLOCKED_LONG) 130))
    {
    case 130:
    case 129:
      return 0;
    case 128:
      return pthread_mutex_unlock (&(s->u.mutex));
    }

  return EINVAL;
}

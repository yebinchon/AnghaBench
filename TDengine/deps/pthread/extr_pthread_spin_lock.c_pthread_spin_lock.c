
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_2__* pthread_spinlock_t ;
struct TYPE_6__ {int mutex; } ;
struct TYPE_7__ {scalar_t__ interlock; TYPE_1__ u; } ;
typedef int PTW32_INTERLOCKED_LONGPTR ;
typedef scalar_t__ PTW32_INTERLOCKED_LONG ;


 int EINVAL ;
 TYPE_2__* PTHREAD_SPINLOCK_INITIALIZER ;
 scalar_t__ PTW32_INTERLOCKED_COMPARE_EXCHANGE_LONG (int ,scalar_t__,scalar_t__) ;
 scalar_t__ PTW32_SPIN_LOCKED ;
 scalar_t__ PTW32_SPIN_UNLOCKED ;
 scalar_t__ PTW32_SPIN_USE_MUTEX ;
 int pthread_mutex_lock (int *) ;
 int ptw32_spinlock_check_need_init (TYPE_2__**) ;

int
pthread_spin_lock (pthread_spinlock_t * lock)
{
  register pthread_spinlock_t s;

  if (((void*)0) == lock || ((void*)0) == *lock)
    {
      return (EINVAL);
    }

  if (*lock == PTHREAD_SPINLOCK_INITIALIZER)
    {
      int result;

      if ((result = ptw32_spinlock_check_need_init (lock)) != 0)
 {
   return (result);
 }
    }

  s = *lock;

  while ((PTW32_INTERLOCKED_LONG) PTW32_SPIN_LOCKED ==
  PTW32_INTERLOCKED_COMPARE_EXCHANGE_LONG ((PTW32_INTERLOCKED_LONGPTR) &s->interlock,
               (PTW32_INTERLOCKED_LONG) PTW32_SPIN_LOCKED,
               (PTW32_INTERLOCKED_LONG) PTW32_SPIN_UNLOCKED))
    {
    }

  if (s->interlock == PTW32_SPIN_LOCKED)
    {
      return 0;
    }
  else if (s->interlock == PTW32_SPIN_USE_MUTEX)
    {
      return pthread_mutex_lock (&(s->u.mutex));
    }

  return EINVAL;
}

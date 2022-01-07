
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_2__* pthread_spinlock_t ;
struct TYPE_6__ {int mutex; } ;
struct TYPE_7__ {TYPE_1__ u; int interlock; } ;
typedef int PTW32_INTERLOCKED_LONGPTR ;
typedef int PTW32_INTERLOCKED_LONG ;


 int EBUSY ;
 int EINVAL ;
 TYPE_2__* PTHREAD_SPINLOCK_INITIALIZER ;
 scalar_t__ PTW32_INTERLOCKED_COMPARE_EXCHANGE_LONG (int ,int ,int ) ;



 int pthread_mutex_trylock (int *) ;
 int ptw32_spinlock_check_need_init (TYPE_2__**) ;

int
pthread_spin_trylock (pthread_spinlock_t * lock)
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

  switch ((long)
   PTW32_INTERLOCKED_COMPARE_EXCHANGE_LONG ((PTW32_INTERLOCKED_LONGPTR) &s->interlock,
                (PTW32_INTERLOCKED_LONG) 130,
                (PTW32_INTERLOCKED_LONG) 129))
    {
    case 129:
      return 0;
    case 130:
      return EBUSY;
    case 128:
      return pthread_mutex_trylock (&(s->u.mutex));
    }

  return EINVAL;
}

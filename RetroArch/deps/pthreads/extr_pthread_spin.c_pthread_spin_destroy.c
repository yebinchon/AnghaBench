
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_2__* pthread_spinlock_t ;
struct TYPE_6__ {int mutex; } ;
struct TYPE_7__ {scalar_t__ interlock; TYPE_1__ u; } ;


 int EBUSY ;
 int EINVAL ;
 scalar_t__ PTE_ATOMIC_COMPARE_EXCHANGE (scalar_t__*,int,scalar_t__) ;
 scalar_t__ PTE_OBJECT_INVALID ;
 scalar_t__ PTE_SPIN_UNLOCKED ;
 scalar_t__ PTE_SPIN_USE_MUTEX ;
 TYPE_2__* PTHREAD_SPINLOCK_INITIALIZER ;
 int free (TYPE_2__*) ;
 int pte_osMutexLock (int ) ;
 int pte_osMutexUnlock (int ) ;
 int pte_spinlock_test_init_lock ;
 int pthread_mutex_destroy (int *) ;

int
pthread_spin_destroy (pthread_spinlock_t * lock)
{
  register pthread_spinlock_t s;
  int result = 0;

  if (lock == ((void*)0) || *lock == ((void*)0))
    {
      return EINVAL;
    }

  if ((s = *lock) != PTHREAD_SPINLOCK_INITIALIZER)
    {
      if (s->interlock == PTE_SPIN_USE_MUTEX)
        {
          result = pthread_mutex_destroy (&(s->u.mutex));
        }
      else if (PTE_SPIN_UNLOCKED !=
               PTE_ATOMIC_COMPARE_EXCHANGE (
                 & (s->interlock),
                 (int) PTE_OBJECT_INVALID,
                 PTE_SPIN_UNLOCKED))
        {
          result = EINVAL;
        }

      if (0 == result)
        {




          *lock = ((void*)0);
          (void) free (s);
        }
    }
  else
    {




      pte_osMutexLock (pte_spinlock_test_init_lock);




      if (*lock == PTHREAD_SPINLOCK_INITIALIZER)
        {






          *lock = ((void*)0);
        }
      else
        {




          result = EBUSY;
        }

      pte_osMutexUnlock(pte_spinlock_test_init_lock);

    }

  return (result);
}

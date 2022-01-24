#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* pthread_spinlock_t ;
struct TYPE_6__ {int /*<<< orphan*/  mutex; } ;
struct TYPE_7__ {scalar_t__ interlock; TYPE_1__ u; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (scalar_t__*,int,scalar_t__) ; 
 scalar_t__ PTE_OBJECT_INVALID ; 
 scalar_t__ PTE_SPIN_UNLOCKED ; 
 scalar_t__ PTE_SPIN_USE_MUTEX ; 
 TYPE_2__* PTHREAD_SPINLOCK_INITIALIZER ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pte_spinlock_test_init_lock ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

int
FUNC5 (pthread_spinlock_t * lock)
{
  register pthread_spinlock_t s;
  int result = 0;

  if (lock == NULL || *lock == NULL)
    {
      return EINVAL;
    }

  if ((s = *lock) != PTHREAD_SPINLOCK_INITIALIZER)
    {
      if (s->interlock == PTE_SPIN_USE_MUTEX)
        {
          result = FUNC4 (&(s->u.mutex));
        }
      else if (PTE_SPIN_UNLOCKED !=
               FUNC0 (
                 & (s->interlock),
                 (int) PTE_OBJECT_INVALID,
                 PTE_SPIN_UNLOCKED))
        {
          result = EINVAL;
        }

      if (0 == result)
        {
          /*
           * We are relying on the application to ensure that all other threads
           * have finished with the spinlock before destroying it.
           */
          *lock = NULL;
          (void) FUNC1 (s);
        }
    }
  else
    {
      /*
       * See notes in pte_spinlock_check_need_init() above also.
       */

      FUNC2 (pte_spinlock_test_init_lock);

      /*
       * Check again.
       */
      if (*lock == PTHREAD_SPINLOCK_INITIALIZER)
        {
          /*
           * This is all we need to do to destroy a statically
           * initialised spinlock that has not yet been used (initialised).
           * If we get to here, another thread
           * waiting to initialise this mutex will get an EINVAL.
           */
          *lock = NULL;
        }
      else
        {
          /*
           * The spinlock has been initialised while we were waiting
           * so assume it's in use.
           */
          result = EBUSY;
        }

      FUNC3(pte_spinlock_test_init_lock);

    }

  return (result);
}
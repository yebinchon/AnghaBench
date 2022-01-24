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
 int EINVAL ; 
 scalar_t__ FUNC0 (scalar_t__*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ PTE_SPIN_LOCKED ; 
 int /*<<< orphan*/  PTE_SPIN_UNLOCKED ; 
 scalar_t__ PTE_SPIN_USE_MUTEX ; 
 TYPE_2__* PTHREAD_SPINLOCK_INITIALIZER ; 
 int FUNC1 (TYPE_2__**) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3 (pthread_spinlock_t * lock)
{
   register pthread_spinlock_t s;

   if (NULL == lock || NULL == *lock)
      return (EINVAL);

   if (*lock == PTHREAD_SPINLOCK_INITIALIZER)
   {
      int result;

      if ((result = FUNC1 (lock)) != 0)
         return (result);
   }

   s = *lock;

   while ( PTE_SPIN_LOCKED ==
         FUNC0 (&(s->interlock),
            PTE_SPIN_LOCKED,
            PTE_SPIN_UNLOCKED))
   {
   }

   if (s->interlock == PTE_SPIN_LOCKED)
      return 0;

   if (s->interlock == PTE_SPIN_USE_MUTEX)
      return FUNC2 (&(s->u.mutex));

   return EINVAL;
}
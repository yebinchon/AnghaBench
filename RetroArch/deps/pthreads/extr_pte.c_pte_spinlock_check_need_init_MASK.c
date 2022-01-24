#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/ * pthread_spinlock_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  PTHREAD_PROCESS_PRIVATE ; 
 int /*<<< orphan*/ * PTHREAD_SPINLOCK_INITIALIZER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pte_spinlock_test_init_lock ; 
 int FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 

int FUNC3 (pthread_spinlock_t * lock)
{
   int result = 0;

   /*
    * The following guarded test is specifically for statically
    * initialised spinlocks (via PTHREAD_SPINLOCK_INITIALIZER).
    *
    * Note that by not providing this synchronisation we risk
    * introducing race conditions into applications which are
    * correctly written.
    */


   FUNC0 (pte_spinlock_test_init_lock);

   /*
    * We got here possibly under race
    * conditions. Check again inside the critical section
    * and only initialise if the spinlock is valid (not been destroyed).
    * If a static spinlock has been destroyed, the application can
    * re-initialise it only by calling pthread_spin_init()
    * explicitly.
    */
   if (*lock == PTHREAD_SPINLOCK_INITIALIZER)
      result = FUNC2 (lock, PTHREAD_PROCESS_PRIVATE);
   /*
    * The spinlock has been destroyed while we were waiting to
    * initialise it, so the operation that caused the
    * auto-initialisation should fail.
    */
   else if (*lock == NULL)
      result = EINVAL;

   FUNC1(pte_spinlock_test_init_lock);

   return (result);
}
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
typedef  int /*<<< orphan*/ * pthread_rwlock_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/ * PTHREAD_RWLOCK_INITIALIZER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pte_rwlock_test_init_lock ; 
 int FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

int FUNC3 (pthread_rwlock_t * rwlock)
{
   int result = 0;

   /*
    * The following guarded test is specifically for statically
    * initialised rwlocks (via PTHREAD_RWLOCK_INITIALIZER).
    *
    * Note that by not providing this synchronisation we risk
    * introducing race conditions into applications which are
    * correctly written.
    *
    * Approach
    * --------
    * We know that static rwlocks will not be PROCESS_SHARED
    * so we can serialise access to internal state using
    * critical sections rather than mutexes.
    *
    * If using a single global lock slows applications down too much,
    * multiple global locks could be created and hashed on some random
    * value associated with each mutex, the pointer perhaps. At a guess,
    * a good value for the optimal number of global locks might be
    * the number of processors + 1.
    *
    */


   FUNC0 (pte_rwlock_test_init_lock);

   /*
    * We got here possibly under race
    * conditions. Check again inside the critical section
    * and only initialise if the rwlock is valid (not been destroyed).
    * If a static rwlock has been destroyed, the application can
    * re-initialise it only by calling pthread_rwlock_init()
    * explicitly.
    */
   if (*rwlock == PTHREAD_RWLOCK_INITIALIZER)
      result = FUNC2 (rwlock, NULL);
   /*
    * The rwlock has been destroyed while we were waiting to
    * initialise it, so the operation that caused the
    * auto-initialisation should fail.
    */
   else if (*rwlock == NULL)
      result = EINVAL;

   FUNC1(pte_rwlock_test_init_lock);

   return result;
}
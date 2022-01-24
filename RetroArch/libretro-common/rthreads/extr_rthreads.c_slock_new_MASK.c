#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ slock_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

slock_t *FUNC4(void)
{
   bool mutex_created = false;
   slock_t      *lock = (slock_t*)FUNC1(1, sizeof(*lock));
   if (!lock)
      return NULL;

#ifdef USE_WIN32_THREADS
   InitializeCriticalSection(&lock->lock);
   mutex_created = true;
#else
   mutex_created = (FUNC3(&lock->lock, NULL) == 0);
#endif

   if (!mutex_created)
      goto error;

   return lock;

error:
   FUNC2(lock);
   return NULL;
}
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
typedef  int /*<<< orphan*/  malloc_mutex_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ opt_abort ; 

void
FUNC4(malloc_mutex_t *mutex)
{

#ifdef JEMALLOC_MUTEX_INIT_CB
	malloc_mutex_unlock(mutex);
#else
	if (FUNC1(mutex)) {
		FUNC3("<jemalloc>: Error re-initializing mutex in "
		    "child\n");
		if (opt_abort)
			FUNC0();
	}
#endif
}
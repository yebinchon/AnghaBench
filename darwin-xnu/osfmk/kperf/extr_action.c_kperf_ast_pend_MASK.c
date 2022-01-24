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
typedef  int uint32_t ;
typedef  scalar_t__ thread_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 () ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

int
FUNC5(thread_t thread, uint32_t set_flags)
{
	/* can only pend on the current thread */
	if (thread != FUNC1()) {
		FUNC4("pending to non-current thread");
	}

	/* get our current bits */
	uint32_t flags = FUNC2(thread);

	/* see if it's already been done or pended */
	if (!(flags & set_flags)) {
		/* set the bit on the thread */
		flags |= set_flags;
		FUNC3(thread, flags);

		/* set the actual AST */
		FUNC0(thread);
		return 1;
	}

	return 0;
}
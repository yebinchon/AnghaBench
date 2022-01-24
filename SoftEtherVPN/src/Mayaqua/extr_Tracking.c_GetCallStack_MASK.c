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
typedef  int /*<<< orphan*/  CALLSTACK_DATA ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  cs_lock ; 
 scalar_t__ do_not_get_callstack ; 

CALLSTACK_DATA *FUNC4()
{
	CALLSTACK_DATA *s;
	if (do_not_get_callstack)
	{
		// Not to get the call stack
		return NULL;
	}

	FUNC1(cs_lock);
	{
		// Get the call stack
		s = FUNC0();
	}
	FUNC2(cs_lock);
	if (s == NULL)
	{
		return NULL;
	}

	// Descend in the call stack for 3 steps
	s = FUNC3(s, 3);

	return s;
}
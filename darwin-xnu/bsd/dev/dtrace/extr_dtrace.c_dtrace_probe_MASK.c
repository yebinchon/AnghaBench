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
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  thread_t ;
typedef  scalar_t__ dtrace_id_t ;

/* Variables and functions */
 scalar_t__ DTRACEFLT_UNKNOWN ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,scalar_t__,int,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ dtrace_probeid_error ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 

void
FUNC7(dtrace_id_t id, uint64_t arg0, uint64_t arg1,
    uint64_t arg2, uint64_t arg3, uint64_t arg4)
{
	thread_t thread = FUNC1();
	FUNC2();
	if (id == dtrace_probeid_error) {
		FUNC0(id, arg0, arg1, arg2, arg3, arg4);
		FUNC4(); /* Defeat tail-call optimization of __dtrace_probe() */
	} else if (!FUNC3(thread)) {
		FUNC5(thread, TRUE);
		FUNC0(id, arg0, arg1, arg2, arg3, arg4);
		FUNC5(thread, FALSE);
	}
#if DEBUG
	else __dtrace_probe(dtrace_probeid_error, 0, id, 1, -1, DTRACEFLT_UNKNOWN);
#endif
	FUNC6();
}
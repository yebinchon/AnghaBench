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
typedef  int /*<<< orphan*/  proc_t ;

/* Variables and functions */
 int EINVAL ; 
 int ESRCH ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int ktrace_keep_ownership_on_reset ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int
FUNC5(int pid)
{
	FUNC0();

	/* allow user space to successfully unset owning pid */
	if (pid == -1) {
		FUNC1();
		return 0;
	}

	/* use ktrace_reset or ktrace_release_ownership, not this */
	if (pid == 0) {
		FUNC1();
		return EINVAL;
	}

	proc_t p = FUNC3(pid);
	if (!p) {
		FUNC1();
		return ESRCH;
	}

	ktrace_keep_ownership_on_reset = true;
	FUNC2(p);

	FUNC4(p);
	return 0;
}
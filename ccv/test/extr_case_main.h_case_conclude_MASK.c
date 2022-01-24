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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void FUNC3(int pass, int skip, int fail)
{
	if (FUNC1(FUNC0(stdout)))
	{
		if (skip > 0)
		{
			if (fail == 0)
				FUNC2("\033[0;32mall test case(s) passed, %d test case(s) skipped, congratulations!\033[0;0m\n", skip);
			else
				FUNC2("\033[0;31m%d of %d test case(s) passed, %d test case(s) skipped\033[0;0m\n", pass, fail + pass, skip);
		} else {
			if (fail == 0)
				FUNC2("\033[0;32mall test case(s) passed, congratulations!\033[0;0m\n");
			else
				FUNC2("\033[0;31m%d of %d test case(s) passed\033[0;0m\n", pass, fail + pass);
		}
	} else {
		if (skip > 0)
		{
			if (fail == 0)
				FUNC2("all test case(s) passed, %d test case(s) skipped, congratulations!\n", skip);
			else
				FUNC2("%d of %d test case(s) passed, %d test case(s) skipped\n", pass, fail + pass, skip);
		} else {
			if (fail == 0)
				FUNC2("all test case(s) passed, congratulations!\n");
			else
				FUNC2("%d of %d test case(s) passed\n", pass, fail + pass);
		}
	}
}
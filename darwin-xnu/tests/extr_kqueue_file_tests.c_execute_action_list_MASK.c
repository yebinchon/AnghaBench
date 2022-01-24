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
typedef  int /*<<< orphan*/  action_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

int
FUNC3(action_t *actions, int nactions, int failout) 
{
	int i, res;
	for (i = 0, res = 0; (0 == res || (!failout)) && (i < nactions); i++) {
		FUNC0("Starting prep action %d\n", i);
		res = *((int *) FUNC1(&(actions[i])));
		if(res != 0) {
			FUNC0("Action list failed on step %d. res = %d errno = %d (%s)\n", i, res,
				errno, FUNC2(errno));
		} else {
			FUNC0("Action list work succeeded on step %d.\n", i);
		}
	}

	return res;
}
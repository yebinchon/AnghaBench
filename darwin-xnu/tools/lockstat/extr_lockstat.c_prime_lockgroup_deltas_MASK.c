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
typedef  int /*<<< orphan*/  lockgroup_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 void* FUNC0 (int,int) ; 
 int count ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * lockgroup_deltas ; 
 int /*<<< orphan*/  lockgroup_info ; 
 int /*<<< orphan*/ * lockgroup_start ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  stderr ; 

void
FUNC4(void)
{
	lockgroup_start = FUNC0(count, sizeof(lockgroup_info_t));
	if (lockgroup_start == NULL) {
		FUNC2(stderr, "Can't allocate memory for lockgroup info\n");
		FUNC1 (EXIT_FAILURE);
	}
	FUNC3(lockgroup_start, lockgroup_info, count * sizeof(lockgroup_info_t));

	lockgroup_deltas = FUNC0(count,  sizeof(lockgroup_info_t));
	if (lockgroup_deltas == NULL) {
		FUNC2(stderr, "Can't allocate memory for lockgroup info\n");
		FUNC1 (EXIT_FAILURE);
	}
}
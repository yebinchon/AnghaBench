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
struct os_reason {int dummy; } ;

/* Variables and functions */
 int OS_REASON_MAX_COUNT ; 
 int /*<<< orphan*/  OS_REASON_RESERVE_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  os_reason_lock_attr ; 
 int /*<<< orphan*/  os_reason_lock_grp ; 
 int /*<<< orphan*/  os_reason_lock_grp_attr ; 
 int /*<<< orphan*/ * os_reason_zone ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int,int,int,char*) ; 

void
FUNC7()
{
	int reasons_allocated = 0;

	/*
	 * Initialize OS reason group and lock attributes
	 */
	os_reason_lock_grp_attr =  FUNC3();
	os_reason_lock_grp = FUNC2("os_reason_lock", os_reason_lock_grp_attr);
	os_reason_lock_attr = FUNC1();

	/*
	 * Create OS reason zone.
	 */
	os_reason_zone = FUNC6(sizeof(struct os_reason), OS_REASON_MAX_COUNT * sizeof(struct os_reason),
				OS_REASON_MAX_COUNT, "os reasons");
	if (os_reason_zone == NULL) {
		FUNC4("failed to initialize os_reason_zone");
	}

	/*
	 * We pre-fill the OS reason zone to reduce the likelihood that
	 * the jetsam thread and others block when they create an exit
	 * reason. This pre-filled memory is not-collectable since it's
	 * foreign memory crammed in as part of zfill().
	 */
	reasons_allocated = FUNC5(os_reason_zone, OS_REASON_RESERVE_COUNT);
	FUNC0(reasons_allocated > 0);
}
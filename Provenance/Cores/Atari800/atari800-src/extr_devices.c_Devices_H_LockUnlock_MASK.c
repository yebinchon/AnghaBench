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
 int /*<<< orphan*/  CHECK_READ_ONLY ; 
 int /*<<< orphan*/  CPU_ClrN ; 
 int /*<<< orphan*/  CPU_SetN ; 
 int CPU_regY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int) ; 
 scalar_t__ devbug ; 
 int /*<<< orphan*/  host_path ; 

__attribute__((used)) static void FUNC5(int readonly)
{
	int num_changed = 0;
	int num_failed = 0;

	CHECK_READ_ONLY;

	if (FUNC0(FALSE) == 0)
		return;

#ifdef DO_DIR
	if (!Devices_OpenDir(host_path)) {
		CPU_regY = 170; /* file not found */
		CPU_SetN;
		return;
	}
	while (Devices_ReadDir(host_path, NULL, NULL, NULL, NULL, NULL))
#endif /* DO_DIR */
	{
		if (FUNC3(host_path, readonly))
			num_changed++;
		else
			num_failed++;
	}

	if (devbug)
		FUNC4("%d changed, %d failed",
		       num_changed, num_failed);

	if (num_failed != 0 || num_changed == 0) {
		CPU_regY = 170; /* file not found */
		CPU_SetN;
	}
	else {
		CPU_regY = 1;
		CPU_ClrN;
	}
}
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
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_NOTOWNED ; 
 scalar_t__ TRUE ; 
 scalar_t__ vm_darkwake_mode ; 
 scalar_t__ vm_page_background_target ; 
 scalar_t__ vm_page_background_target_snapshot ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  vm_page_queue_lock ; 
 int /*<<< orphan*/  FUNC2 () ; 

void
FUNC3(boolean_t darkwake_mode)
{
	FUNC0(&vm_page_queue_lock, LCK_MTX_ASSERT_NOTOWNED);

	FUNC1();

	if (vm_darkwake_mode == darkwake_mode) {
		/*
		 * No change.
		 */
		FUNC2();
		return;
	}

	vm_darkwake_mode = darkwake_mode;

	if (vm_darkwake_mode == TRUE) {
#if CONFIG_BACKGROUND_QUEUE

		/* save background target to restore later */
		vm_page_background_target_snapshot = vm_page_background_target;

		/* target is set to 0...no protection for background pages */
		vm_page_background_target = 0;

#endif /* CONFIG_BACKGROUND_QUEUE */

	} else if (vm_darkwake_mode == FALSE) {
#if CONFIG_BACKGROUND_QUEUE

		if (vm_page_background_target_snapshot) {
			vm_page_background_target = vm_page_background_target_snapshot;
		}
#endif /* CONFIG_BACKGROUND_QUEUE */
	}
	FUNC2();
}
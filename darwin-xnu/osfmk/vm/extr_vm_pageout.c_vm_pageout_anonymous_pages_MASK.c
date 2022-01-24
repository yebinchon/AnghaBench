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
 scalar_t__ FALSE ; 
 scalar_t__ TRUE ; 
 scalar_t__ VM_CONFIG_COMPRESSOR_IS_PRESENT ; 
 scalar_t__ VM_CONFIG_SWAP_IS_PRESENT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  vm_page_active_count ; 
 int /*<<< orphan*/  vm_page_anonymous_count ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  vm_page_queue_active ; 
 int /*<<< orphan*/  vm_page_queue_anonymous ; 
 int /*<<< orphan*/  vm_page_queue_throttled ; 
 int /*<<< orphan*/  vm_page_throttled_count ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ vm_pageout_anonymous_pages_active ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC4()
{
	if (VM_CONFIG_COMPRESSOR_IS_PRESENT) {

		FUNC1();

		if (vm_pageout_anonymous_pages_active == TRUE) {
			FUNC2();
			return;
		}
		vm_pageout_anonymous_pages_active = TRUE;
		FUNC2();

		FUNC3(&vm_page_queue_throttled, vm_page_throttled_count);
		FUNC3(&vm_page_queue_anonymous, vm_page_anonymous_count);
		FUNC3(&vm_page_queue_active, vm_page_active_count);

		if (VM_CONFIG_SWAP_IS_PRESENT)
			FUNC0();

		FUNC1();
		vm_pageout_anonymous_pages_active = FALSE;
		FUNC2();
	}
}
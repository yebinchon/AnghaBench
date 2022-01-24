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
typedef  int /*<<< orphan*/  (* pmap_traverse_callback ) (uintptr_t,uintptr_t,void*) ;

/* Variables and functions */
 int /*<<< orphan*/  HW_PAGE_MASK ; 
 uintptr_t HW_PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VM_MAX_KERNEL_ADDRESS ; 
 int /*<<< orphan*/  VM_MIN_KERNEL_AND_KEXT_ADDRESS ; 
 scalar_t__ FUNC1 (uintptr_t) ; 
 uintptr_t FUNC2 (uintptr_t,int /*<<< orphan*/ ) ; 
 uintptr_t FUNC3 (uintptr_t,int /*<<< orphan*/ ) ; 

int
FUNC4(pmap_traverse_callback cb, void *ctx)
{
	uintptr_t shadow_base = (uintptr_t)FUNC0(VM_MIN_KERNEL_AND_KEXT_ADDRESS);
	uintptr_t shadow_top = (uintptr_t)FUNC0(VM_MAX_KERNEL_ADDRESS);
	shadow_base = FUNC3(shadow_base, HW_PAGE_MASK);
	shadow_top = FUNC2(shadow_top, HW_PAGE_MASK);

	uintptr_t start = 0, end = 0;

	for (uintptr_t addr = shadow_base; addr < shadow_top; addr += HW_PAGE_SIZE) {
		if (FUNC1(addr)) {
			if (start == 0) {
				start = addr;
			}
			end = addr + HW_PAGE_SIZE;
		} else if (start && end) {
			cb(start, end, ctx);
			start = end = 0;
		}
	}

	if (start && end) {
		cb(start, end, ctx);
	}

	return 0;
}
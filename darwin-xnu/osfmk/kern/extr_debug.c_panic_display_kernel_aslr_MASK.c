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
 int /*<<< orphan*/  FUNC0 (char*,void*) ; 
 scalar_t__ vm_kernel_slide ; 
 scalar_t__ vm_kernel_stext ; 

void
FUNC1(void) {
	if (vm_kernel_slide) {
		FUNC0("Kernel slide:     0x%016lx\n", (unsigned long) vm_kernel_slide);
		FUNC0("Kernel text base: %p\n", (void *) vm_kernel_stext);
	}
}
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
typedef  scalar_t__ vm_offset_t ;
typedef  scalar_t__ uptr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ kernel_stack_size ; 

__attribute__((used)) static bool
FUNC2(uptr ptr)
{
	vm_offset_t base = FUNC1(FUNC0());

	if (ptr >= base && ptr < (base + kernel_stack_size)) {
		return true;
	} else {
		return false;
	}
}
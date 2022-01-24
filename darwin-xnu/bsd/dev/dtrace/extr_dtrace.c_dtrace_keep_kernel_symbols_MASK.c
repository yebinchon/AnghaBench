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
 scalar_t__ DTRACE_KERNEL_SYMBOLS_ALWAYS_FROM_KERNEL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ dtrace_kernel_symbol_mode ; 

int
FUNC2(void)
{
	if (FUNC1() && !FUNC0()) {
		return 0;
	}

	if (dtrace_kernel_symbol_mode == DTRACE_KERNEL_SYMBOLS_ALWAYS_FROM_KERNEL)
		return 1;

	return 0;
}
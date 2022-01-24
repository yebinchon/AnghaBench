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
 int ARM_DBGDSCR_TXFULL ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static int
FUNC2(void)
{
#ifdef __arm__
	return !(arm_debug_read_dscr() & ARM_DBGDSCR_TXFULL);
#else
	/* ARM64_TODO */
	FUNC1();
	return 0;
#endif
}
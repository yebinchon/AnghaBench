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
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ global_update ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 

void
FUNC3()
{
	if (global_update) {
		FUNC1("ucode: Re-applying update after wake (CPU #%d)\n", FUNC0());
		FUNC2();
#if DEBUG
	} else {
		kprintf("ucode: No update to apply (CPU #%d)\n", cpu_number());
#endif
	}
}
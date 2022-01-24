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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 scalar_t__ KTRACE_STATE_OFF ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ ktrace_active_mask ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  ktrace_keep_ownership_on_reset ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ ktrace_state ; 

void
FUNC3(uint32_t reset_mask)
{
	FUNC1();

	if (ktrace_active_mask == 0) {
		if (!ktrace_keep_ownership_on_reset) {
			FUNC0(ktrace_state == KTRACE_STATE_OFF);
		}
		return;
	}

	FUNC2(reset_mask);
}
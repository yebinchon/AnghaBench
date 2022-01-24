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
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ debug_enabled ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  is_clock_configured ; 
 int /*<<< orphan*/  FUNC2 () ; 

void
FUNC3(void)
{
	FUNC1();
	FUNC0();
	is_clock_configured = TRUE;
	if (debug_enabled)
		FUNC2();
}
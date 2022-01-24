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
 int /*<<< orphan*/  AdaptiveExecutorCustomScanMethods ; 
 int /*<<< orphan*/  CoordinatorInsertSelectCustomScanMethods ; 
 int /*<<< orphan*/  DelayedErrorCustomScanMethods ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TaskTrackerCustomScanMethods ; 

void
FUNC1(void)
{
	FUNC0(&AdaptiveExecutorCustomScanMethods);
	FUNC0(&TaskTrackerCustomScanMethods);
	FUNC0(&CoordinatorInsertSelectCustomScanMethods);
	FUNC0(&DelayedErrorCustomScanMethods);
}
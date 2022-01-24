#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  analog_deadzone; } ;

/* Variables and functions */
 scalar_t__ GP2X_DEV_CAANOO ; 
 int /*<<< orphan*/  IN_CFG_ABS_DEAD_ZONE ; 
 TYPE_1__ currentConfig ; 
 scalar_t__ gp2x_dev_id ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4(void)
{
	if (gp2x_dev_id == GP2X_DEV_CAANOO)
		FUNC1(FUNC0("evdev:pollux-analog"),
			IN_CFG_ABS_DEAD_ZONE,
			currentConfig.analog_deadzone);

	// dirty buffers better go now than during gameplay
	FUNC3();
	FUNC2(0);
}
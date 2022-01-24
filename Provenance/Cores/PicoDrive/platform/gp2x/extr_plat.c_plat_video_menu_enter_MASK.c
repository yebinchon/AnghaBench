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
 scalar_t__ GP2X_DEV_WIZ ; 
 int gp2x_current_bpp ; 
 scalar_t__ gp2x_dev_id ; 
 int /*<<< orphan*/ * gp2x_screens ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC5(int is_rom_loaded)
{
	if (gp2x_current_bpp != 16 || gp2x_dev_id == GP2X_DEV_WIZ) {
		/* try to switch nicely avoiding glitches */
		FUNC3();
		FUNC4(gp2x_screens[0], 0, 320*240*2);
		FUNC4(gp2x_screens[1], 0, 320*240*2);
		FUNC2(); // might flip to fb2/3
		FUNC2(); // ..so we do it again
	}
	else
		FUNC2();

	// switch to 16bpp
	FUNC1(16, 0);
	FUNC0(0, 320, 240);
}
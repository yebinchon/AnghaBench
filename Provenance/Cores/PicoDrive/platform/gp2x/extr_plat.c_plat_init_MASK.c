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
#define  GP2X_DEV_CAANOO 130 
#define  GP2X_DEV_GP2X 129 
#define  GP2X_DEV_WIZ 128 
 int flip_after_sync ; 
 int /*<<< orphan*/  g_menubg_ptr ; 
 int g_menuscreen_h ; 
 int g_menuscreen_w ; 
 int gp2x_dev_id ; 
 int /*<<< orphan*/  gp2x_evdev_pdata ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * gp2x_screens ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  in_gp2x_defbinds ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 

void FUNC11(void)
{
	FUNC10();

	switch (gp2x_dev_id) {
	case GP2X_DEV_GP2X:
		FUNC7();
		FUNC8();
		break;
	case GP2X_DEV_WIZ:
	case GP2X_DEV_CAANOO:
		FUNC9();
		break;
	}

	g_menuscreen_w = 320;
	g_menuscreen_h = 240;
	FUNC1(0, 0, 320*240*2);

	FUNC0(1);

	// use buffer2 for menubg to save mem (using only buffers 0, 1 in menu)
	g_menubg_ptr = gp2x_screens[2];

	flip_after_sync = 1;
	FUNC2();

	FUNC3(&gp2x_evdev_pdata);
	FUNC4(in_gp2x_defbinds);
	FUNC5();
	FUNC6();
}
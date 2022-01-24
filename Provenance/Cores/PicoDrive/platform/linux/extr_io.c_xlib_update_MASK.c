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
typedef  scalar_t__ Status ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  g_screen_height ; 
 int /*<<< orphan*/  g_screen_width ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  ximage ; 
 int /*<<< orphan*/  xlib_display ; 
 int /*<<< orphan*/  xlib_window ; 

__attribute__((used)) static void FUNC5(void)
{
	Status xstatus;

	FUNC1(xlib_display);

	xstatus = FUNC2(xlib_display, xlib_window, FUNC0(xlib_display, 0), ximage,
		0, 0, 0, 0, g_screen_width, g_screen_height);
	if (xstatus != 0)
		FUNC4(stderr, "XPutImage %ld\n", xstatus);

	FUNC3(xlib_display);
}
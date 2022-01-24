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
typedef  int /*<<< orphan*/  Visual ;
typedef  int /*<<< orphan*/  Display ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZPixmap ; 
 void* FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int scr_h ; 
 int scr_w ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * ximage ; 
 int /*<<< orphan*/  xlib_display ; 

__attribute__((used)) static void FUNC6(Display *display, Visual *visual)
{
	void *xlib_screen;

	FUNC2(xlib_display);

	if (ximage != NULL)
		FUNC1(ximage);
	ximage = NULL;

	xlib_screen = FUNC4(scr_w * scr_h, 4);
	if (xlib_screen != NULL)
		ximage = FUNC0(display, visual, 24, ZPixmap, 0,
				xlib_screen, scr_w, scr_h, 32, 0);
	if (ximage == NULL)
		FUNC5(stderr, "failed to alloc ximage\n");

	FUNC3(xlib_display);
}
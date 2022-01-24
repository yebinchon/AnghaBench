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
 scalar_t__ EGL_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VG_CLEAR_COLOR ; 
 scalar_t__ VG_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  egldisplay ; 
 int /*<<< orphan*/  eglsurface ; 
 int renderHeight ; 
 int renderWidth ; 
 int /*<<< orphan*/  rotateN ; 
 int /*<<< orphan*/  tiger ; 
 int tigerMaxX ; 
 int tigerMaxY ; 
 int tigerMinX ; 
 int tigerMinY ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (float,float) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,float*) ; 
 int /*<<< orphan*/  FUNC10 (int,int) ; 

void FUNC11(int w, int h)
{
#ifndef __RASPBERRYPI__
	if(renderWidth != w || renderHeight != h)
#endif
	{
		float clearColor[4] = {1,1,1,1};
		float scale = w / (tigerMaxX - tigerMinX);

		FUNC3(egldisplay, eglsurface);	//force EGL to recognize resize

		FUNC9(VG_CLEAR_COLOR, 4, clearColor);
		FUNC4(0, 0, w, h);

		FUNC6();
#ifdef __RASPBERRYPI__
                vgTranslate(w * 0.5f, h * 0.5f);
                vgRotate(rotateN);
                vgTranslate(-w * 0.5f, -h * 0.5f);
#endif
		FUNC8(scale, scale);
		FUNC10(-tigerMinX, -tigerMinY + 0.5f * (h / scale - (tigerMaxY - tigerMinY)));

		FUNC0(tiger);
		FUNC1(FUNC5() == VG_NO_ERROR);

		renderWidth = w;
		renderHeight = h;
	}
#ifndef __RASPBERRYPI__
	FUNC3(egldisplay, eglsurface);
	FUNC1(FUNC2() == EGL_SUCCESS);
#endif
}
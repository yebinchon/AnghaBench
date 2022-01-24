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
typedef  int /*<<< orphan*/  NativeWindowType ;
typedef  int EGLint ;

/* Variables and functions */
#define  EGL_ALPHA_SIZE 137 
#define  EGL_BLUE_SIZE 136 
 int /*<<< orphan*/  EGL_DEFAULT_DISPLAY ; 
#define  EGL_DONT_CARE 135 
#define  EGL_GREEN_SIZE 134 
#define  EGL_LUMINANCE_SIZE 133 
#define  EGL_NONE 132 
 int /*<<< orphan*/  EGL_OPENVG_API ; 
#define  EGL_RED_SIZE 131 
#define  EGL_SAMPLES 130 
 scalar_t__ EGL_SUCCESS ; 
#define  EGL_SURFACE_TYPE 129 
#define  EGL_WINDOW_BIT 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int const*,int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  eglconfig ; 
 int /*<<< orphan*/  eglcontext ; 
 int /*<<< orphan*/  egldisplay ; 
 int /*<<< orphan*/  eglsurface ; 
 int /*<<< orphan*/  tiger ; 
 int /*<<< orphan*/  tigerCommandCount ; 
 int /*<<< orphan*/  tigerCommands ; 
 int /*<<< orphan*/  tigerPointCount ; 
 int /*<<< orphan*/  tigerPoints ; 

void FUNC10(NativeWindowType window)
{
	static const EGLint s_configAttribs[] =
	{
		EGL_RED_SIZE,		8,
		EGL_GREEN_SIZE, 	8,
		EGL_BLUE_SIZE,		8,
		EGL_ALPHA_SIZE, 	8,
		EGL_LUMINANCE_SIZE, EGL_DONT_CARE,			//EGL_DONT_CARE
		EGL_SURFACE_TYPE,	EGL_WINDOW_BIT,
		EGL_SAMPLES,		1,
		EGL_NONE
	};
	EGLint numconfigs;

	egldisplay = FUNC6(EGL_DEFAULT_DISPLAY);
	FUNC8(egldisplay, NULL, NULL);
	FUNC1(FUNC7() == EGL_SUCCESS);
	FUNC2(EGL_OPENVG_API);

	FUNC3(egldisplay, s_configAttribs, &eglconfig, 1, &numconfigs);
	FUNC1(FUNC7() == EGL_SUCCESS);
	FUNC1(numconfigs == 1);

	eglsurface = FUNC5(egldisplay, eglconfig, window, NULL);
	FUNC1(FUNC7() == EGL_SUCCESS);
	eglcontext = FUNC4(egldisplay, eglconfig, NULL, NULL);
	FUNC1(FUNC7() == EGL_SUCCESS);
	FUNC9(egldisplay, eglsurface, eglsurface, eglcontext);
	FUNC1(FUNC7() == EGL_SUCCESS);

	tiger = FUNC0(tigerCommands, tigerCommandCount, tigerPoints, tigerPointCount);
}
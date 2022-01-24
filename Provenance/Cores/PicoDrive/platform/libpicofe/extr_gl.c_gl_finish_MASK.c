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
 int /*<<< orphan*/  EGL_NO_CONTEXT ; 
 scalar_t__ EGL_NO_DISPLAY ; 
 scalar_t__ EGL_NO_SURFACE ; 
 int /*<<< orphan*/  ectxt ; 
 scalar_t__ edpy ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ esfc ; 
 void* gl_es_display ; 
 void* gl_es_surface ; 
 int /*<<< orphan*/  FUNC4 () ; 

void FUNC5(void)
{
	FUNC2(edpy, EGL_NO_SURFACE, EGL_NO_SURFACE, EGL_NO_CONTEXT);
	FUNC0(edpy, ectxt);
	ectxt = EGL_NO_CONTEXT;
	FUNC1(edpy, esfc);
	esfc = EGL_NO_SURFACE;
	FUNC3(edpy);
	edpy = EGL_NO_DISPLAY;

	gl_es_display = (void *)edpy;
	gl_es_surface = (void *)esfc;

	FUNC4();
}
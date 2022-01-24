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
typedef  int EGLint ;
typedef  int /*<<< orphan*/  EGLDisplay ;
typedef  int /*<<< orphan*/  EGLConfig ;

/* Variables and functions */
 int /*<<< orphan*/  EGL_BLUE_SIZE ; 
 int /*<<< orphan*/  EGL_GREEN_SIZE ; 
 int /*<<< orphan*/  EGL_RED_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

bool FUNC1(void *display_data, EGLDisplay dpy, EGLConfig config)
{
   /* Makes sure we have 8 bit color. */
   EGLint r, g, b;
   if (!FUNC0(dpy, config, EGL_RED_SIZE, &r))
      return false;
   if (!FUNC0(dpy, config, EGL_GREEN_SIZE, &g))
      return false;
   if (!FUNC0(dpy, config, EGL_BLUE_SIZE, &b))
      return false;

   if (r != 8 || g != 8 || b != 8)
      return false;

   return true;
}
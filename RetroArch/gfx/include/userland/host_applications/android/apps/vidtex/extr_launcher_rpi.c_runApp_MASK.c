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
typedef  int (* RUN_APP_FN_T ) (void const*,int /*<<< orphan*/ *) ;
typedef  int /*<<< orphan*/  EGL_DISPMANX_WINDOW_T ;
typedef  int /*<<< orphan*/  EGLNativeWindowType ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

int FUNC3(const char *name, RUN_APP_FN_T run_app_fn, const void *params, size_t param_size)
{
   EGL_DISPMANX_WINDOW_T win;
   (void) param_size;

   FUNC2("Initialsing BCM HOST");
   FUNC0();

   FUNC2("Starting '%s'", name);
   if (FUNC1(&win) != 0)
      return -1;

   return run_app_fn(params, (EGLNativeWindowType *) &win);
}
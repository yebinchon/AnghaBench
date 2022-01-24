#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int interval; scalar_t__ dpy; } ;
typedef  TYPE_1__ egl_ctx_data_t ;

/* Variables and functions */
 scalar_t__ EGL_NO_DISPLAY ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 

void FUNC5(egl_ctx_data_t *egl, int interval)
{
   /* Can be called before initialization.
    * Some contexts require that swap interval
    * is known at startup time.
    */
   egl->interval = interval;

   if (egl->dpy  == EGL_NO_DISPLAY)
      return;
   if (!(FUNC2()))
      return;

   FUNC1("[EGL]: eglSwapInterval(%u)\n", interval);
   if (!FUNC3(egl->dpy, interval))
   {
      FUNC0("[EGL]: eglSwapInterval() failed.\n");
      FUNC4();
   }
}
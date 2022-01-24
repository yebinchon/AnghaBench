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
struct TYPE_3__ {int /*<<< orphan*/  ctx; int /*<<< orphan*/  surf; int /*<<< orphan*/  dpy; int /*<<< orphan*/  config; } ;
typedef  TYPE_1__ egl_ctx_data_t ;
typedef  int /*<<< orphan*/  NativeWindowType ;
typedef  int /*<<< orphan*/  EGLint ;

/* Variables and functions */
 int /*<<< orphan*/  EGL_BACK_BUFFER ; 
 int /*<<< orphan*/  EGL_NONE ; 
 int /*<<< orphan*/  EGL_NO_SURFACE ; 
 int /*<<< orphan*/  EGL_RENDER_BUFFER ; 
 int /*<<< orphan*/  FUNC0 (char*,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool FUNC4(egl_ctx_data_t *egl, void *native_window)
{
   EGLint window_attribs[] = {
	   EGL_RENDER_BUFFER, EGL_BACK_BUFFER,
	   EGL_NONE,
   };

   egl->surf = FUNC1(egl->dpy, egl->config, (NativeWindowType)native_window, window_attribs);

   if (egl->surf == EGL_NO_SURFACE)
      return false;

   /* Connect the context to the surface. */
   if (!FUNC3(egl->dpy, egl->surf, egl->surf, egl->ctx))
      return false;

   FUNC0("[EGL]: Current context: %p.\n", (void*)FUNC2());

   return true;
}
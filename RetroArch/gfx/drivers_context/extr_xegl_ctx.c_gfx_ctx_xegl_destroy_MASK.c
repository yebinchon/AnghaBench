#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int should_reset_mode; int /*<<< orphan*/  egl; } ;
typedef  TYPE_1__ xegl_ctx_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  g_x11_dpy ; 
 scalar_t__ g_x11_win ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(void *data)
{
   xegl_ctx_data_t *xegl = (xegl_ctx_data_t*)data;

   FUNC6();
#ifdef HAVE_EGL
   egl_destroy(&xegl->egl);
#endif

   if (g_x11_win)
   {
#ifdef HAVE_XINERAMA
      /* Save last used monitor for later. */
      xinerama_save_last_used_monitor(RootWindow(
               g_x11_dpy, DefaultScreen(g_x11_dpy)));
#endif
      FUNC7(false);
   }

   FUNC4();

   if (xegl->should_reset_mode)
   {
      FUNC5(g_x11_dpy);
      xegl->should_reset_mode = false;
   }

   FUNC3(data);

   /* Do not close g_x11_dpy. We'll keep one for the entire application
    * lifecycle to work-around nVidia EGL limitations.
    */
}
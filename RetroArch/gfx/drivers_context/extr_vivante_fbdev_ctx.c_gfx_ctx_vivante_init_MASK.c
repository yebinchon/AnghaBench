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
typedef  void vivante_ctx_data_t ;
typedef  int /*<<< orphan*/  video_frame_info_t ;
typedef  int EGLint ;

/* Variables and functions */
#define  EGL_ALPHA_SIZE 137 
#define  EGL_BLUE_SIZE 136 
 int /*<<< orphan*/  EGL_DEFAULT_DISPLAY ; 
#define  EGL_GREEN_SIZE 135 
#define  EGL_NONE 134 
#define  EGL_OPENGL_ES2_BIT 133 
#define  EGL_RED_SIZE 132 
#define  EGL_RENDERABLE_TYPE 131 
#define  EGL_SAMPLES 130 
#define  EGL_SURFACE_TYPE 129 
#define  EGL_WINDOW_BIT 128 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int const,int /*<<< orphan*/ ,int*,int*,int*,int const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static void *FUNC8(video_frame_info_t *video_info, void *video_driver)
{
#ifdef HAVE_EGL
   EGLint n;
   EGLint major, minor;
   EGLint format;
   static const EGLint attribs[] = {
#if 0
      EGL_RENDERABLE_TYPE, EGL_OPENGL_ES2_BIT,
      EGL_SURFACE_TYPE, EGL_WINDOW_BIT,
#endif
      EGL_BLUE_SIZE, 5,
      EGL_GREEN_SIZE, 6,
      EGL_RED_SIZE, 5,
      EGL_ALPHA_SIZE, 0,
      EGL_SAMPLES,            0,
      EGL_NONE
   };
#endif
   vivante_ctx_data_t *viv = (vivante_ctx_data_t*)FUNC1(1, sizeof(*viv));

   if (!viv)
       return NULL;

#ifdef HAVE_EGL
   frontend_driver_install_signal_handler();
#endif

   /* Disable cursor blinking so it's not visible in RetroArch. */
   FUNC7("setterm -cursor off");

#ifdef HAVE_EGL
   if (!egl_init_context(&viv->egl, EGL_NONE, EGL_DEFAULT_DISPLAY, &major, &minor,
            &n, attribs, NULL))
   {
      egl_report_error();
      goto error;
   }
#endif

   return viv;

error:
   FUNC0("[Vivante fbdev]: EGL error: %d.\n", FUNC2());
   FUNC6(viv);
   return NULL;
}
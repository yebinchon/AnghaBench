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
typedef  int /*<<< orphan*/  video_frame_info_t ;
typedef  void emscripten_ctx_data_t ;
typedef  int EGLint ;

/* Variables and functions */
#define  EGL_ALPHA_SIZE 136 
#define  EGL_BLUE_SIZE 135 
#define  EGL_CONTEXT_CLIENT_VERSION 134 
 scalar_t__ EGL_DEFAULT_DISPLAY ; 
#define  EGL_DEPTH_SIZE 133 
#define  EGL_GREEN_SIZE 132 
#define  EGL_NONE 131 
#define  EGL_RED_SIZE 130 
#define  EGL_SURFACE_TYPE 129 
#define  EGL_WINDOW_BIT 128 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int const,void*,int*,int*,int*,int const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*,scalar_t__*,scalar_t__*) ; 
 scalar_t__ emscripten_initial_height ; 
 scalar_t__ emscripten_initial_width ; 
 scalar_t__ g_egl_inited ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 

__attribute__((used)) static void *FUNC9(video_frame_info_t *video_info,
   void *video_driver)
{
#ifdef HAVE_EGL
   unsigned width, height;
   EGLint major, minor;
   EGLint n;
   static const EGLint attribute_list[] =
   {
      EGL_RED_SIZE, 8,
      EGL_GREEN_SIZE, 8,
      EGL_BLUE_SIZE, 8,
      EGL_ALPHA_SIZE, 8,
      EGL_DEPTH_SIZE, 16,
      EGL_SURFACE_TYPE, EGL_WINDOW_BIT,
      EGL_NONE
   };
   static const EGLint context_attributes[] =
   {
      EGL_CONTEXT_CLIENT_VERSION, 2,
      EGL_NONE
   };
#endif
   emscripten_ctx_data_t *emscripten = (emscripten_ctx_data_t*)
      FUNC1(1, sizeof(*emscripten));

   if (!emscripten)
      return NULL;

   (void)video_driver;

   if (emscripten_initial_width == 0 || emscripten_initial_height == 0)
      FUNC7("#canvas",
         &emscripten_initial_width, &emscripten_initial_height);

#ifdef HAVE_EGL
   if (g_egl_inited)
   {
      RARCH_LOG("[EMSCRIPTEN/EGL]: Attempted to re-initialize driver.\n");
      return (void*)"emscripten";
   }

   if (!egl_init_context(&emscripten->egl, EGL_NONE,
      (void *)EGL_DEFAULT_DISPLAY, &major, &minor, &n, attribute_list, NULL))
   {
      egl_report_error();
      goto error;
   }

   if (!egl_create_context(&emscripten->egl, context_attributes))
   {
      egl_report_error();
      goto error;
   }

   if (!egl_create_surface(&emscripten->egl, 0))
      goto error;

   egl_get_video_size(&emscripten->egl, &width, &height);

   emscripten->fb_width  = width;
   emscripten->fb_height = height;
   RARCH_LOG("[EMSCRIPTEN/EGL]: Dimensions: %ux%u\n", width, height);
#endif

   return emscripten;

error:
   FUNC8(video_driver);
   return NULL;
}
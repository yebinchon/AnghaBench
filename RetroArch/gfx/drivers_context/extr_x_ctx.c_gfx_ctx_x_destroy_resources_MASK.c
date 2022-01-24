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
struct TYPE_3__ {int g_should_reset_mode; int g_core_es; int /*<<< orphan*/  vk; int /*<<< orphan*/  g_glx_win; int /*<<< orphan*/ * g_hw_ctx; int /*<<< orphan*/ * g_ctx; int /*<<< orphan*/  remainder; int /*<<< orphan*/  divisor; int /*<<< orphan*/  swap_mode; } ;
typedef  TYPE_1__ gfx_ctx_x_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
#define  GFX_CTX_NONE 131 
#define  GFX_CTX_OPENGL_API 130 
#define  GFX_CTX_OPENGL_ES_API 129 
#define  GFX_CTX_VULKAN_API 128 
 int /*<<< orphan*/  None ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ g_major ; 
 scalar_t__ g_minor ; 
 int /*<<< orphan*/ * g_pglSwapInterval ; 
 int /*<<< orphan*/ * g_pglSwapIntervalEXT ; 
 int /*<<< orphan*/ * g_pglSwapIntervalSGI ; 
 int /*<<< orphan*/ * g_x11_dpy ; 
 scalar_t__ g_x11_win ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int x_api ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC15(gfx_ctx_x_data_t *x)
{
   FUNC12();

   if (g_x11_dpy)
   {
      switch (x_api)
      {
         case GFX_CTX_OPENGL_API:
         case GFX_CTX_OPENGL_ES_API:
#if defined(HAVE_OPENGL) || defined(HAVE_OPENGL1) || defined(HAVE_OPENGL_CORE)
            if (x->g_ctx)
            {
               if (x->swap_mode)
                  glXSwapBuffersMscOML(g_x11_dpy, x->g_glx_win, 0, x->divisor, x->remainder);
               else
                  glXSwapBuffers(g_x11_dpy, x->g_glx_win);

               glFinish();
               glXMakeContextCurrent(g_x11_dpy, None, None, NULL);

               if (!video_driver_is_video_cache_context())
               {
                  if (x->g_hw_ctx)
                     glXDestroyContext(g_x11_dpy, x->g_hw_ctx);
                  if (x->g_ctx)
                     glXDestroyContext(g_x11_dpy, x->g_ctx);

                  x->g_ctx    = NULL;
                  x->g_hw_ctx = NULL;
               }
            }

            if (g_x11_win)
            {
               if (x->g_glx_win)
                  glXDestroyWindow(g_x11_dpy, x->g_glx_win);
               x->g_glx_win = 0;
            }
#endif
            break;

         case GFX_CTX_VULKAN_API:
#ifdef HAVE_VULKAN
            vulkan_context_destroy(&x->vk, g_x11_win != 0);
#endif
            break;

         case GFX_CTX_NONE:
         default:
            break;
      }
   }

   if (g_x11_win && g_x11_dpy)
   {
#ifdef HAVE_XINERAMA
      /* Save last used monitor for later. */
      xinerama_save_last_used_monitor(DefaultRootWindow(g_x11_dpy));
#endif
      FUNC13(false);
   }

   FUNC10();

   if (g_x11_dpy)
   {
      if (x->g_should_reset_mode)
      {
         FUNC11(g_x11_dpy);
         x->g_should_reset_mode = false;
      }

      if (!FUNC8())
      {
         FUNC1(g_x11_dpy);
         g_x11_dpy = NULL;
      }
   }

#if defined(HAVE_OPENGL) || defined(HAVE_OPENGL1) || defined(HAVE_OPENGL_CORE)
   g_pglSwapInterval    = NULL;
   g_pglSwapIntervalSGI = NULL;
   g_pglSwapIntervalEXT = NULL;
#endif
   g_major              = 0;
   g_minor              = 0;
   x->g_core_es         = false;
}
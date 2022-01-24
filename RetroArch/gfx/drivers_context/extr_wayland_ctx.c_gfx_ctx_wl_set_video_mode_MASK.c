#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_9__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  video_frame_info_t ;
struct TYPE_15__ {int visible; } ;
struct TYPE_17__ {int /*<<< orphan*/  dpy; } ;
struct TYPE_14__ {int /*<<< orphan*/  interval; } ;
struct TYPE_16__ {unsigned int width; unsigned int height; int buffer_scale; int configured; TYPE_1__ cursor; int /*<<< orphan*/  swap_interval; int /*<<< orphan*/  surface; TYPE_9__ input; int /*<<< orphan*/  vk; scalar_t__ zxdg_toplevel; scalar_t__ xdg_toplevel; TYPE_10__ egl; int /*<<< orphan*/  win; scalar_t__ zxdg_shell; scalar_t__ deco_manager; void* deco; int /*<<< orphan*/  zxdg_surface; scalar_t__ xdg_shell; int /*<<< orphan*/  xdg_surface; int /*<<< orphan*/  compositor; } ;
typedef  TYPE_2__ gfx_ctx_wayland_data_t ;
typedef  int /*<<< orphan*/  EGLint ;
typedef  int /*<<< orphan*/  EGLNativeWindowType ;

/* Variables and functions */
 unsigned int DEFAULT_WINDOWED_HEIGHT ; 
 unsigned int DEFAULT_WINDOWED_WIDTH ; 
#define  GFX_CTX_NONE 132 
#define  GFX_CTX_OPENGL_API 131 
#define  GFX_CTX_OPENGL_ES_API 130 
#define  GFX_CTX_OPENVG_API 129 
#define  GFX_CTX_VULKAN_API 128 
 int /*<<< orphan*/  VULKAN_WSI_WAYLAND ; 
 int /*<<< orphan*/  FUNC0 (TYPE_10__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_10__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_10__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int wl_api ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wl_surface_listener ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  xdg_shell_listener ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xdg_surface_listener ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  xdg_toplevel_listener ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC22 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (scalar_t__,int /*<<< orphan*/ ) ; 
 void* FUNC24 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC25 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  zxdg_shell_v6_listener ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 
 scalar_t__ FUNC28 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  zxdg_surface_v6_listener ; 
 int /*<<< orphan*/  FUNC29 (scalar_t__,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  zxdg_toplevel_v6_listener ; 
 int /*<<< orphan*/  FUNC30 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC31 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC32 (scalar_t__,char*) ; 

__attribute__((used)) static bool FUNC33(void *data,
      video_frame_info_t *video_info,
      unsigned width, unsigned height,
      bool fullscreen)
{
#ifdef HAVE_EGL
   EGLint egl_attribs[16];
   EGLint *attr              = egl_fill_attribs(
         (gfx_ctx_wayland_data_t*)data, egl_attribs);
#endif
   gfx_ctx_wayland_data_t *wl = (gfx_ctx_wayland_data_t*)data;

   wl->width                  = width  ? width  : DEFAULT_WINDOWED_WIDTH;
   wl->height                 = height ? height : DEFAULT_WINDOWED_HEIGHT;

   wl->surface                = FUNC9(wl->compositor);

   FUNC15(wl->surface, wl->buffer_scale);
   FUNC13(wl->surface, &wl_surface_listener, wl);

   switch (wl_api)
   {
      case GFX_CTX_OPENGL_API:
      case GFX_CTX_OPENGL_ES_API:
      case GFX_CTX_OPENVG_API:
#ifdef HAVE_EGL
         wl->win        = wl_egl_window_create(wl->surface, wl->width * wl->buffer_scale, wl->height * wl->buffer_scale);
#endif
         break;
      case GFX_CTX_NONE:
      default:
         break;
   }

   if (wl->xdg_shell)
   {
      wl->xdg_surface = FUNC23(wl->xdg_shell, wl->surface);
      FUNC16(wl->xdg_surface, &xdg_surface_listener, wl);

      wl->xdg_toplevel = FUNC17(wl->xdg_surface);
      FUNC18(wl->xdg_toplevel, &xdg_toplevel_listener, wl);

      FUNC19(wl->xdg_toplevel, "retroarch");
      FUNC21(wl->xdg_toplevel, "RetroArch");

      if (wl->deco_manager)
      {
         wl->deco = FUNC24(
               wl->deco_manager, wl->xdg_toplevel);
      }

      /* Waiting for xdg_toplevel to be configured before starting to draw */
      FUNC14(wl->surface);
      wl->configured = true;

      while (wl->configured)
         FUNC10(wl->input.dpy);

      FUNC11(wl->input.dpy);
      FUNC22(wl->xdg_shell, &xdg_shell_listener, NULL);
   }
   else if (wl->zxdg_shell)
   {
      wl->zxdg_surface = FUNC26(wl->zxdg_shell, wl->surface);
      FUNC27(wl->zxdg_surface, &zxdg_surface_v6_listener, wl);

      wl->zxdg_toplevel = FUNC28(wl->zxdg_surface);
      FUNC29(wl->zxdg_toplevel, &zxdg_toplevel_v6_listener, wl);

      FUNC30(wl->zxdg_toplevel, "retroarch");
      FUNC32(wl->zxdg_toplevel, "RetroArch");

      if (wl->deco_manager)
         wl->deco = FUNC24(
               wl->deco_manager, wl->xdg_toplevel);

      /* Waiting for xdg_toplevel to be configured before starting to draw */
      FUNC14(wl->surface);
      wl->configured = true;

      while (wl->configured)
         FUNC10(wl->input.dpy);

      FUNC11(wl->input.dpy);
      FUNC25(wl->zxdg_shell, &zxdg_shell_v6_listener, NULL);
   }

   switch (wl_api)
   {
      case GFX_CTX_OPENGL_API:
      case GFX_CTX_OPENGL_ES_API:
      case GFX_CTX_OPENVG_API:
#ifdef HAVE_EGL

         if (!egl_create_context(&wl->egl, (attr != egl_attribs) ? egl_attribs : NULL))
         {
            egl_report_error();
            goto error;
         }

         if (!egl_create_surface(&wl->egl, (EGLNativeWindowType)wl->win))
            goto error;
         egl_set_swap_interval(&wl->egl, wl->egl.interval);
#endif
         break;
      case GFX_CTX_NONE:
      default:
         break;
   }

   if (fullscreen)
   {
	   if (wl->xdg_toplevel)
		   FUNC20(wl->xdg_toplevel, NULL);
	   else if (wl->zxdg_toplevel)
		   FUNC31(wl->zxdg_toplevel, NULL);
	}

   FUNC5(&wl->input);

   switch (wl_api)
   {
      case GFX_CTX_VULKAN_API:
         FUNC11(wl->input.dpy);

#ifdef HAVE_VULKAN
         if (!vulkan_surface_create(&wl->vk, VULKAN_WSI_WAYLAND,
                  wl->input.dpy, wl->surface,
                  wl->width * wl->buffer_scale, wl->height * wl->buffer_scale, wl->swap_interval))
            goto error;
#endif
         break;
      case GFX_CTX_NONE:
      default:
         break;
   }

   if (fullscreen)
   {
      wl->cursor.visible = false;
      FUNC7(wl, false);
   }
   else
      wl->cursor.visible = true;

   return true;

error:
   FUNC6(data);
   return false;
}
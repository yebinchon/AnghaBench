#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * dpy; int /*<<< orphan*/  fd; } ;
struct TYPE_5__ {int /*<<< orphan*/ * surface; scalar_t__ theme; } ;
struct TYPE_7__ {scalar_t__ height; scalar_t__ width; int /*<<< orphan*/ * zxdg_toplevel; int /*<<< orphan*/ * xdg_toplevel; int /*<<< orphan*/ * surface; int /*<<< orphan*/ * xdg_surface; TYPE_2__ input; int /*<<< orphan*/ * registry; int /*<<< orphan*/ * compositor; int /*<<< orphan*/ * zxdg_shell; int /*<<< orphan*/ * xdg_shell; int /*<<< orphan*/ * win; scalar_t__ idle_inhibitor; scalar_t__ deco_manager; scalar_t__ deco; scalar_t__ idle_inhibit_manager; scalar_t__ zxdg_surface; scalar_t__ seat; TYPE_1__ cursor; scalar_t__ wl_touch; scalar_t__ wl_pointer; scalar_t__ wl_keyboard; int /*<<< orphan*/  vk; int /*<<< orphan*/  egl; } ;
typedef  TYPE_3__ gfx_ctx_wayland_data_t ;

/* Variables and functions */
#define  GFX_CTX_NONE 132 
#define  GFX_CTX_OPENGL_API 131 
#define  GFX_CTX_OPENGL_ES_API 130 
#define  GFX_CTX_OPENVG_API 129 
#define  GFX_CTX_VULKAN_API 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int wl_api ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC23 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC25(gfx_ctx_wayland_data_t *wl)
{
   if (!wl)
      return;

   switch (wl_api)
   {
      case GFX_CTX_OPENGL_API:
      case GFX_CTX_OPENGL_ES_API:
      case GFX_CTX_OPENVG_API:
#ifdef HAVE_EGL
         egl_destroy(&wl->egl);

         if (wl->win)
            wl_egl_window_destroy(wl->win);
#endif
         break;
      case GFX_CTX_VULKAN_API:
#ifdef HAVE_VULKAN
         vulkan_context_destroy(&wl->vk, wl->surface);

         if (wl->input.dpy != NULL && wl->input.fd >= 0)
            close(wl->input.fd);
#endif
         break;
      case GFX_CTX_NONE:
      default:
         break;
   }

#ifdef HAVE_XKBCOMMON
   free_xkb();
#endif

   if (wl->wl_keyboard)
      FUNC9(wl->wl_keyboard);
   if (wl->wl_pointer)
      FUNC10(wl->wl_pointer);
   if (wl->wl_touch)
      FUNC14(wl->wl_touch);

   if (wl->cursor.theme)
      FUNC5(wl->cursor.theme);
   if (wl->cursor.surface)
      FUNC13(wl->cursor.surface);

   if (wl->seat)
      FUNC12(wl->seat);
   if (wl->xdg_shell)
      FUNC17(wl->xdg_shell);
   if (wl->zxdg_shell)
      FUNC21(wl->zxdg_shell);
   if (wl->compositor)
      FUNC4(wl->compositor);
   if (wl->registry)
      FUNC11(wl->registry);
   if (wl->xdg_surface)
      FUNC15(wl->xdg_surface);
   if (wl->zxdg_surface)
      FUNC22(wl->zxdg_surface);
   if (wl->surface)
      FUNC13(wl->surface);
   if (wl->xdg_toplevel)
      FUNC16(wl->xdg_toplevel);
   if (wl->zxdg_toplevel)
      FUNC24(wl->zxdg_toplevel);
   if (wl->idle_inhibit_manager)
      FUNC18(wl->idle_inhibit_manager);
   if (wl->deco)
      FUNC23(wl->deco);
   if (wl->deco_manager)
      FUNC20(wl->deco_manager);
   if (wl->idle_inhibitor)
      FUNC19(wl->idle_inhibitor);

   if (wl->input.dpy)
   {
      FUNC7(wl->input.dpy);
      FUNC6(wl->input.dpy);
   }

#ifdef HAVE_EGL
   wl->win              = NULL;
#endif
   wl->xdg_shell        = NULL;
   wl->zxdg_shell       = NULL;
   wl->compositor       = NULL;
   wl->registry         = NULL;
   wl->input.dpy        = NULL;
   wl->xdg_surface      = NULL;
   wl->surface          = NULL;
   wl->xdg_toplevel     = NULL;
   wl->zxdg_toplevel    = NULL;

   wl->width            = 0;
   wl->height           = 0;

}
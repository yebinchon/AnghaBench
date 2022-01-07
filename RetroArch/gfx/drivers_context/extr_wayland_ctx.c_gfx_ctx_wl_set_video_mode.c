
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_9__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_10__ ;


typedef int video_frame_info_t ;
struct TYPE_15__ {int visible; } ;
struct TYPE_17__ {int dpy; } ;
struct TYPE_14__ {int interval; } ;
struct TYPE_16__ {unsigned int width; unsigned int height; int buffer_scale; int configured; TYPE_1__ cursor; int swap_interval; int surface; TYPE_9__ input; int vk; scalar_t__ zxdg_toplevel; scalar_t__ xdg_toplevel; TYPE_10__ egl; int win; scalar_t__ zxdg_shell; scalar_t__ deco_manager; void* deco; int zxdg_surface; scalar_t__ xdg_shell; int xdg_surface; int compositor; } ;
typedef TYPE_2__ gfx_ctx_wayland_data_t ;
typedef int EGLint ;
typedef int EGLNativeWindowType ;


 unsigned int DEFAULT_WINDOWED_HEIGHT ;
 unsigned int DEFAULT_WINDOWED_WIDTH ;





 int VULKAN_WSI_WAYLAND ;
 int egl_create_context (TYPE_10__*,int *) ;
 int egl_create_surface (TYPE_10__*,int ) ;
 int * egl_fill_attribs (TYPE_2__*,int *) ;
 int egl_report_error () ;
 int egl_set_swap_interval (TYPE_10__*,int ) ;
 int flush_wayland_fd (TYPE_9__*) ;
 int gfx_ctx_wl_destroy (void*) ;
 int gfx_ctx_wl_show_mouse (TYPE_2__*,int) ;
 int vulkan_surface_create (int *,int ,int ,int ,int,int,int ) ;
 int wl_api ;
 int wl_compositor_create_surface (int ) ;
 int wl_display_dispatch (int ) ;
 int wl_display_roundtrip (int ) ;
 int wl_egl_window_create (int ,int,int) ;
 int wl_surface_add_listener (int ,int *,TYPE_2__*) ;
 int wl_surface_commit (int ) ;
 int wl_surface_listener ;
 int wl_surface_set_buffer_scale (int ,int) ;
 int xdg_shell_listener ;
 int xdg_surface_add_listener (int ,int *,TYPE_2__*) ;
 scalar_t__ xdg_surface_get_toplevel (int ) ;
 int xdg_surface_listener ;
 int xdg_toplevel_add_listener (scalar_t__,int *,TYPE_2__*) ;
 int xdg_toplevel_listener ;
 int xdg_toplevel_set_app_id (scalar_t__,char*) ;
 int xdg_toplevel_set_fullscreen (scalar_t__,int *) ;
 int xdg_toplevel_set_title (scalar_t__,char*) ;
 int xdg_wm_base_add_listener (scalar_t__,int *,int *) ;
 int xdg_wm_base_get_xdg_surface (scalar_t__,int ) ;
 void* zxdg_decoration_manager_v1_get_toplevel_decoration (scalar_t__,scalar_t__) ;
 int zxdg_shell_v6_add_listener (scalar_t__,int *,int *) ;
 int zxdg_shell_v6_get_xdg_surface (scalar_t__,int ) ;
 int zxdg_shell_v6_listener ;
 int zxdg_surface_v6_add_listener (int ,int *,TYPE_2__*) ;
 scalar_t__ zxdg_surface_v6_get_toplevel (int ) ;
 int zxdg_surface_v6_listener ;
 int zxdg_toplevel_v6_add_listener (scalar_t__,int *,TYPE_2__*) ;
 int zxdg_toplevel_v6_listener ;
 int zxdg_toplevel_v6_set_app_id (scalar_t__,char*) ;
 int zxdg_toplevel_v6_set_fullscreen (scalar_t__,int *) ;
 int zxdg_toplevel_v6_set_title (scalar_t__,char*) ;

__attribute__((used)) static bool gfx_ctx_wl_set_video_mode(void *data,
      video_frame_info_t *video_info,
      unsigned width, unsigned height,
      bool fullscreen)
{





   gfx_ctx_wayland_data_t *wl = (gfx_ctx_wayland_data_t*)data;

   wl->width = width ? width : DEFAULT_WINDOWED_WIDTH;
   wl->height = height ? height : DEFAULT_WINDOWED_HEIGHT;

   wl->surface = wl_compositor_create_surface(wl->compositor);

   wl_surface_set_buffer_scale(wl->surface, wl->buffer_scale);
   wl_surface_add_listener(wl->surface, &wl_surface_listener, wl);

   switch (wl_api)
   {
      case 131:
      case 130:
      case 129:



         break;
      case 132:
      default:
         break;
   }

   if (wl->xdg_shell)
   {
      wl->xdg_surface = xdg_wm_base_get_xdg_surface(wl->xdg_shell, wl->surface);
      xdg_surface_add_listener(wl->xdg_surface, &xdg_surface_listener, wl);

      wl->xdg_toplevel = xdg_surface_get_toplevel(wl->xdg_surface);
      xdg_toplevel_add_listener(wl->xdg_toplevel, &xdg_toplevel_listener, wl);

      xdg_toplevel_set_app_id(wl->xdg_toplevel, "retroarch");
      xdg_toplevel_set_title(wl->xdg_toplevel, "RetroArch");

      if (wl->deco_manager)
      {
         wl->deco = zxdg_decoration_manager_v1_get_toplevel_decoration(
               wl->deco_manager, wl->xdg_toplevel);
      }


      wl_surface_commit(wl->surface);
      wl->configured = 1;

      while (wl->configured)
         wl_display_dispatch(wl->input.dpy);

      wl_display_roundtrip(wl->input.dpy);
      xdg_wm_base_add_listener(wl->xdg_shell, &xdg_shell_listener, ((void*)0));
   }
   else if (wl->zxdg_shell)
   {
      wl->zxdg_surface = zxdg_shell_v6_get_xdg_surface(wl->zxdg_shell, wl->surface);
      zxdg_surface_v6_add_listener(wl->zxdg_surface, &zxdg_surface_v6_listener, wl);

      wl->zxdg_toplevel = zxdg_surface_v6_get_toplevel(wl->zxdg_surface);
      zxdg_toplevel_v6_add_listener(wl->zxdg_toplevel, &zxdg_toplevel_v6_listener, wl);

      zxdg_toplevel_v6_set_app_id(wl->zxdg_toplevel, "retroarch");
      zxdg_toplevel_v6_set_title(wl->zxdg_toplevel, "RetroArch");

      if (wl->deco_manager)
         wl->deco = zxdg_decoration_manager_v1_get_toplevel_decoration(
               wl->deco_manager, wl->xdg_toplevel);


      wl_surface_commit(wl->surface);
      wl->configured = 1;

      while (wl->configured)
         wl_display_dispatch(wl->input.dpy);

      wl_display_roundtrip(wl->input.dpy);
      zxdg_shell_v6_add_listener(wl->zxdg_shell, &zxdg_shell_v6_listener, ((void*)0));
   }

   switch (wl_api)
   {
      case 131:
      case 130:
      case 129:
         break;
      case 132:
      default:
         break;
   }

   if (fullscreen)
   {
    if (wl->xdg_toplevel)
     xdg_toplevel_set_fullscreen(wl->xdg_toplevel, ((void*)0));
    else if (wl->zxdg_toplevel)
     zxdg_toplevel_v6_set_fullscreen(wl->zxdg_toplevel, ((void*)0));
 }

   flush_wayland_fd(&wl->input);

   switch (wl_api)
   {
      case 128:
         wl_display_roundtrip(wl->input.dpy);







         break;
      case 132:
      default:
         break;
   }

   if (fullscreen)
   {
      wl->cursor.visible = 0;
      gfx_ctx_wl_show_mouse(wl, 0);
   }
   else
      wl->cursor.visible = 1;

   return 1;

error:
   gfx_ctx_wl_destroy(data);
   return 0;
}

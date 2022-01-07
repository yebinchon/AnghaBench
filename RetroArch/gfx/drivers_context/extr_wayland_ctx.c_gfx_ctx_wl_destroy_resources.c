
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * dpy; int fd; } ;
struct TYPE_5__ {int * surface; scalar_t__ theme; } ;
struct TYPE_7__ {scalar_t__ height; scalar_t__ width; int * zxdg_toplevel; int * xdg_toplevel; int * surface; int * xdg_surface; TYPE_2__ input; int * registry; int * compositor; int * zxdg_shell; int * xdg_shell; int * win; scalar_t__ idle_inhibitor; scalar_t__ deco_manager; scalar_t__ deco; scalar_t__ idle_inhibit_manager; scalar_t__ zxdg_surface; scalar_t__ seat; TYPE_1__ cursor; scalar_t__ wl_touch; scalar_t__ wl_pointer; scalar_t__ wl_keyboard; int vk; int egl; } ;
typedef TYPE_3__ gfx_ctx_wayland_data_t ;







 int close (int ) ;
 int egl_destroy (int *) ;
 int free_xkb () ;
 int vulkan_context_destroy (int *,int *) ;
 int wl_api ;
 int wl_compositor_destroy (int *) ;
 int wl_cursor_theme_destroy (scalar_t__) ;
 int wl_display_disconnect (int *) ;
 int wl_display_flush (int *) ;
 int wl_egl_window_destroy (int *) ;
 int wl_keyboard_destroy (scalar_t__) ;
 int wl_pointer_destroy (scalar_t__) ;
 int wl_registry_destroy (int *) ;
 int wl_seat_destroy (scalar_t__) ;
 int wl_surface_destroy (int *) ;
 int wl_touch_destroy (scalar_t__) ;
 int xdg_surface_destroy (int *) ;
 int xdg_toplevel_destroy (int *) ;
 int xdg_wm_base_destroy (int *) ;
 int zwp_idle_inhibit_manager_v1_destroy (scalar_t__) ;
 int zwp_idle_inhibitor_v1_destroy (scalar_t__) ;
 int zxdg_decoration_manager_v1_destroy (scalar_t__) ;
 int zxdg_shell_v6_destroy (int *) ;
 int zxdg_surface_v6_destroy (scalar_t__) ;
 int zxdg_toplevel_decoration_v1_destroy (scalar_t__) ;
 int zxdg_toplevel_v6_destroy (int *) ;

__attribute__((used)) static void gfx_ctx_wl_destroy_resources(gfx_ctx_wayland_data_t *wl)
{
   if (!wl)
      return;

   switch (wl_api)
   {
      case 131:
      case 130:
      case 129:






         break;
      case 128:






         break;
      case 132:
      default:
         break;
   }





   if (wl->wl_keyboard)
      wl_keyboard_destroy(wl->wl_keyboard);
   if (wl->wl_pointer)
      wl_pointer_destroy(wl->wl_pointer);
   if (wl->wl_touch)
      wl_touch_destroy(wl->wl_touch);

   if (wl->cursor.theme)
      wl_cursor_theme_destroy(wl->cursor.theme);
   if (wl->cursor.surface)
      wl_surface_destroy(wl->cursor.surface);

   if (wl->seat)
      wl_seat_destroy(wl->seat);
   if (wl->xdg_shell)
      xdg_wm_base_destroy(wl->xdg_shell);
   if (wl->zxdg_shell)
      zxdg_shell_v6_destroy(wl->zxdg_shell);
   if (wl->compositor)
      wl_compositor_destroy(wl->compositor);
   if (wl->registry)
      wl_registry_destroy(wl->registry);
   if (wl->xdg_surface)
      xdg_surface_destroy(wl->xdg_surface);
   if (wl->zxdg_surface)
      zxdg_surface_v6_destroy(wl->zxdg_surface);
   if (wl->surface)
      wl_surface_destroy(wl->surface);
   if (wl->xdg_toplevel)
      xdg_toplevel_destroy(wl->xdg_toplevel);
   if (wl->zxdg_toplevel)
      zxdg_toplevel_v6_destroy(wl->zxdg_toplevel);
   if (wl->idle_inhibit_manager)
      zwp_idle_inhibit_manager_v1_destroy(wl->idle_inhibit_manager);
   if (wl->deco)
      zxdg_toplevel_decoration_v1_destroy(wl->deco);
   if (wl->deco_manager)
      zxdg_decoration_manager_v1_destroy(wl->deco_manager);
   if (wl->idle_inhibitor)
      zwp_idle_inhibitor_v1_destroy(wl->idle_inhibitor);

   if (wl->input.dpy)
   {
      wl_display_flush(wl->input.dpy);
      wl_display_disconnect(wl->input.dpy);
   }




   wl->xdg_shell = ((void*)0);
   wl->zxdg_shell = ((void*)0);
   wl->compositor = ((void*)0);
   wl->registry = ((void*)0);
   wl->input.dpy = ((void*)0);
   wl->xdg_surface = ((void*)0);
   wl->surface = ((void*)0);
   wl->xdg_toplevel = ((void*)0);
   wl->zxdg_toplevel = ((void*)0);

   wl->width = 0;
   wl->height = 0;

}

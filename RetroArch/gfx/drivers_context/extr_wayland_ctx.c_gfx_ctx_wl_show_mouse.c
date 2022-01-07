
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wl_cursor_image {int height; int width; int hotspot_y; int hotspot_x; } ;
struct TYPE_5__ {int visible; int serial; int * surface; TYPE_1__* default_cursor; } ;
struct TYPE_6__ {TYPE_2__ cursor; int wl_pointer; } ;
typedef TYPE_3__ gfx_ctx_wayland_data_t ;
struct TYPE_4__ {struct wl_cursor_image** images; } ;


 int wl_cursor_image_get_buffer (struct wl_cursor_image*) ;
 int wl_pointer_set_cursor (int ,int ,int *,int ,int ) ;
 int wl_surface_attach (int *,int ,int ,int ) ;
 int wl_surface_commit (int *) ;
 int wl_surface_damage (int *,int ,int ,int ,int ) ;

__attribute__((used)) static void gfx_ctx_wl_show_mouse(void *data, bool state)
{
   gfx_ctx_wayland_data_t *wl = (gfx_ctx_wayland_data_t*)data;
   if (!wl->wl_pointer)
      return;

   if (state)
   {
      struct wl_cursor_image *image = wl->cursor.default_cursor->images[0];
      wl_pointer_set_cursor(wl->wl_pointer, wl->cursor.serial, wl->cursor.surface, image->hotspot_x, image->hotspot_y);
      wl_surface_attach(wl->cursor.surface, wl_cursor_image_get_buffer(image), 0, 0);
      wl_surface_damage(wl->cursor.surface, 0, 0, image->width, image->height);
      wl_surface_commit(wl->cursor.surface);
   }
   else
      wl_pointer_set_cursor(wl->wl_pointer, wl->cursor.serial, ((void*)0), 0, 0);

   wl->cursor.visible = state;
}

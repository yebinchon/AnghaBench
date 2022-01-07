
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int wl_fixed_t ;
typedef int uint32_t ;
struct wl_surface {int dummy; } ;
struct wl_pointer {int dummy; } ;
struct TYPE_7__ {int visible; int serial; } ;
struct TYPE_5__ {int focus; void* last_y; void* y; void* last_x; void* x; } ;
struct TYPE_6__ {TYPE_1__ mouse; } ;
struct TYPE_8__ {TYPE_3__ cursor; TYPE_2__ input; scalar_t__ buffer_scale; } ;
typedef TYPE_4__ gfx_ctx_wayland_data_t ;


 int gfx_ctx_wl_show_mouse (void*,int ) ;
 void* wl_fixed_to_int (int) ;

__attribute__((used)) static void pointer_handle_enter(void *data,
      struct wl_pointer *pointer,
      uint32_t serial,
      struct wl_surface *surface,
      wl_fixed_t sx,
      wl_fixed_t sy)
{
   gfx_ctx_wayland_data_t *wl = (gfx_ctx_wayland_data_t*)data;
   (void)pointer;
   (void)serial;
   (void)surface;

   wl->input.mouse.last_x = wl_fixed_to_int(sx * (wl_fixed_t)wl->buffer_scale);
   wl->input.mouse.last_y = wl_fixed_to_int(sy * (wl_fixed_t)wl->buffer_scale);
   wl->input.mouse.x = wl->input.mouse.last_x;
   wl->input.mouse.y = wl->input.mouse.last_y;
   wl->input.mouse.focus = 1;
   wl->cursor.serial = serial;

   gfx_ctx_wl_show_mouse(data, wl->cursor.visible);
}

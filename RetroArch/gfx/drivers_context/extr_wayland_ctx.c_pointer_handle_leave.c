
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct wl_surface {int dummy; } ;
struct wl_pointer {int dummy; } ;
struct TYPE_4__ {int focus; } ;
struct TYPE_5__ {TYPE_1__ mouse; } ;
struct TYPE_6__ {TYPE_2__ input; } ;
typedef TYPE_3__ gfx_ctx_wayland_data_t ;



__attribute__((used)) static void pointer_handle_leave(void *data,
      struct wl_pointer *pointer,
      uint32_t serial,
      struct wl_surface *surface)
{
   gfx_ctx_wayland_data_t *wl = (gfx_ctx_wayland_data_t*)data;
   wl->input.mouse.focus = 0;
   (void)pointer;
   (void)serial;
   (void)surface;
}

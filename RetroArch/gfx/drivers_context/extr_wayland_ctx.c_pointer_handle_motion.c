
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int wl_fixed_t ;
typedef int uint32_t ;
struct wl_pointer {int dummy; } ;
struct TYPE_4__ {void* y; void* x; } ;
struct TYPE_5__ {TYPE_1__ mouse; } ;
struct TYPE_6__ {scalar_t__ buffer_scale; TYPE_2__ input; } ;
typedef TYPE_3__ gfx_ctx_wayland_data_t ;


 void* wl_fixed_to_int (int) ;

__attribute__((used)) static void pointer_handle_motion(void *data,
      struct wl_pointer *pointer,
      uint32_t time,
      wl_fixed_t sx,
      wl_fixed_t sy)
{
   gfx_ctx_wayland_data_t *wl = (gfx_ctx_wayland_data_t*)data;
   wl->input.mouse.x = wl_fixed_to_int(
         (wl_fixed_t)wl->buffer_scale * sx);
   wl->input.mouse.y = wl_fixed_to_int(
         (wl_fixed_t)wl->buffer_scale * sy);
}

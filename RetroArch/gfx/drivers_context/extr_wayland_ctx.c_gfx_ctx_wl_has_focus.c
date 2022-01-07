
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int keyboard_focus; } ;
struct TYPE_4__ {TYPE_1__ input; } ;
typedef TYPE_2__ gfx_ctx_wayland_data_t ;



__attribute__((used)) static bool gfx_ctx_wl_has_focus(void *data)
{
   (void)data;
   gfx_ctx_wayland_data_t *wl = (gfx_ctx_wayland_data_t*)data;
   return wl->input.keyboard_focus;
}

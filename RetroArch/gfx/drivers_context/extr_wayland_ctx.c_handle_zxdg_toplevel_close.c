
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct zxdg_toplevel_v6 {int dummy; } ;
struct TYPE_3__ {int key_state; } ;
struct TYPE_4__ {TYPE_1__ input; } ;
typedef TYPE_2__ gfx_ctx_wayland_data_t ;


 int BIT_SET (int ,int ) ;
 int KEY_ESC ;

__attribute__((used)) static void handle_zxdg_toplevel_close(void *data,
      struct zxdg_toplevel_v6 *zxdg_toplevel)
{
 gfx_ctx_wayland_data_t *wl = (gfx_ctx_wayland_data_t*)data;
 BIT_SET(wl->input.key_state, KEY_ESC);
}

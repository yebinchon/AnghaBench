
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* current_output; } ;
typedef TYPE_2__ gfx_ctx_wayland_data_t ;
struct TYPE_3__ {scalar_t__ refresh_rate; } ;



__attribute__((used)) static float gfx_ctx_wl_get_refresh_rate(void *data)
{
   gfx_ctx_wayland_data_t *wl = (gfx_ctx_wayland_data_t*)data;

   if (!wl || !wl->current_output)
      return 0;

   return (float) wl->current_output->refresh_rate / 1000.0f;
}

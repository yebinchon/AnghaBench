
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* joypad; } ;
typedef TYPE_2__ input_ctx_wayland_data_t ;
struct TYPE_3__ {int (* destroy ) () ;} ;


 int stub1 () ;

__attribute__((used)) static void input_wl_free(void *data)
{
   input_ctx_wayland_data_t *wl = (input_ctx_wayland_data_t*)data;
   if (!wl)
      return;

   if (wl->joypad)
      wl->joypad->destroy();
}

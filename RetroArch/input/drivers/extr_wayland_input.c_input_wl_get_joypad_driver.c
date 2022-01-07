
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int input_device_driver_t ;
struct TYPE_2__ {int const* joypad; } ;
typedef TYPE_1__ input_ctx_wayland_data_t ;



__attribute__((used)) static const input_device_driver_t *input_wl_get_joypad_driver(void *data)
{
   input_ctx_wayland_data_t *wl = (input_ctx_wayland_data_t*)data;
   if (!wl)
      return ((void*)0);
   return wl->joypad;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int const* joypad; } ;
typedef TYPE_1__ x11_input_t ;
typedef int input_device_driver_t ;



__attribute__((used)) static const input_device_driver_t *x_get_joypad_driver(void *data)
{
   x11_input_t *x11 = (x11_input_t*)data;

   if (!x11)
      return ((void*)0);
   return x11->joypad;
}

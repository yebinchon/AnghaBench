
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int const* joypad; } ;
typedef TYPE_1__ uwp_input_t ;
typedef int input_device_driver_t ;



__attribute__((used)) static const input_device_driver_t *uwp_input_get_joypad_driver(void *data)
{
   uwp_input_t *uwp = (uwp_input_t*)data;
   if (!uwp)
      return ((void*)0);
   return uwp->joypad;
}

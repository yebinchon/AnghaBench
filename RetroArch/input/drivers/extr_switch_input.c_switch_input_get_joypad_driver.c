
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int const* joypad; } ;
typedef TYPE_1__ switch_input_t ;
typedef int input_device_driver_t ;



__attribute__((used)) static const input_device_driver_t *switch_input_get_joypad_driver(void *data)
{
   switch_input_t *sw = (switch_input_t*) data;
   if (sw)
      return sw->joypad;
   return ((void*)0);
}

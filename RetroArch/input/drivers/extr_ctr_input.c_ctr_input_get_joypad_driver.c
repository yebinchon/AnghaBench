
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int input_device_driver_t ;
struct TYPE_2__ {int const* joypad; } ;
typedef TYPE_1__ ctr_input_t ;



__attribute__((used)) static const input_device_driver_t *ctr_input_get_joypad_driver(void *data)
{
   ctr_input_t *ctr = (ctr_input_t*)data;
   if (ctr)
      return ctr->joypad;
   return ((void*)0);
}

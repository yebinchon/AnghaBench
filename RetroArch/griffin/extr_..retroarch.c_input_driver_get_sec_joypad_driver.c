
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int input_device_driver_t ;
struct TYPE_2__ {int const* (* get_sec_joypad_driver ) (int ) ;} ;


 TYPE_1__* current_input ;
 int current_input_data ;
 int const* stub1 (int ) ;

const input_device_driver_t *input_driver_get_sec_joypad_driver(void)
{
   if (!current_input || !current_input->get_sec_joypad_driver)
      return ((void*)0);
   return current_input->get_sec_joypad_driver(current_input_data);
}

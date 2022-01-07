
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_6__ {TYPE_2__* sec_joypad; TYPE_1__* joypad; } ;
typedef TYPE_3__ cocoa_input_data_t ;
struct TYPE_5__ {int (* poll ) () ;} ;
struct TYPE_4__ {int (* poll ) () ;} ;


 int apple_keyboard_find_any_key () ;
 scalar_t__ input_driver_get_data () ;
 int stub1 () ;
 int stub2 () ;

int32_t cocoa_input_find_any_key(void)
{
   cocoa_input_data_t *apple = (cocoa_input_data_t*)input_driver_get_data();

   if (!apple)
      return 0;

   if (apple->joypad)
       apple->joypad->poll();

    if (apple->sec_joypad)
        apple->sec_joypad->poll();

   return apple_keyboard_find_any_key();
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef int int32_t ;
typedef int input_bits_t ;
struct TYPE_7__ {TYPE_2__* sec_joypad; TYPE_1__* joypad; } ;
typedef TYPE_3__ cocoa_input_data_t ;
struct TYPE_6__ {int (* get_buttons ) (int ,int *) ;int (* poll ) () ;} ;
struct TYPE_5__ {int (* get_buttons ) (int ,int *) ;int (* poll ) () ;} ;


 int cocoa_input_find_any_button_ret (TYPE_3__*,int *,int ) ;
 scalar_t__ input_driver_get_data () ;
 int stub1 () ;
 int stub2 (int ,int *) ;
 int stub3 () ;
 int stub4 () ;
 int stub5 (int ,int *) ;

int32_t cocoa_input_find_any_button(uint32_t port)
{
   int ret = -1;
   cocoa_input_data_t *apple = (cocoa_input_data_t*)input_driver_get_data();

   if (!apple)
      return -1;

   if (apple->joypad)
   {
       apple->joypad->poll();

       if (apple->joypad->get_buttons)
       {
          input_bits_t state;
          apple->joypad->get_buttons(port,&state);
          ret = cocoa_input_find_any_button_ret(apple, &state, port);
       }
   }

   if (ret != -1)
      return ret;

   if (apple->sec_joypad)
   {
       apple->sec_joypad->poll();

       if (apple->sec_joypad->get_buttons)
       {
          input_bits_t state;
          apple->sec_joypad->poll();
          apple->sec_joypad->get_buttons(port,&state);
          ret = cocoa_input_find_any_button_ret(apple, &state, port);
       }
   }

   if (ret != -1)
      return ret;

   return -1;
}

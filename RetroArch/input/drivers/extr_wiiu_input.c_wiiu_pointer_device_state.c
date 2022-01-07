
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* joypad; } ;
typedef TYPE_2__ wiiu_input_t ;
typedef int int16_t ;
typedef int input_bits_t ;
struct TYPE_4__ {int (* axis ) (int ,int) ;int (* get_buttons ) (int ,int *) ;} ;


 int BIT256_GET (int ,int ) ;



 int VPAD_BUTTON_TOUCH_BIT ;
 int stub1 (int ,int *) ;
 int stub2 (int ,int) ;
 int stub3 (int ,int) ;

__attribute__((used)) static int16_t wiiu_pointer_device_state(wiiu_input_t* wiiu, unsigned id)
{
 switch (id)
 {
  case 130:
  {
   input_bits_t state;
   wiiu->joypad->get_buttons(0, &state);
   return BIT256_GET(state, VPAD_BUTTON_TOUCH_BIT) ? 1 : 0;
  }
  case 129:
   return wiiu->joypad->axis(0, 0xFFFF0004UL);
  case 128:
   return wiiu->joypad->axis(0, 0xFFFF0005UL);
 }

 return 0;
}

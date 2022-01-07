
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {int wButtons; int * bAnalogButtons; } ;
struct TYPE_5__ {TYPE_1__ Gamepad; } ;
struct TYPE_6__ {TYPE_2__ xstate; } ;


 unsigned int DEFAULT_MAX_PADS ;
 unsigned int GET_HAT_DIR (int) ;
 size_t XINPUT_GAMEPAD_A ;
 size_t XINPUT_GAMEPAD_B ;
 int XINPUT_GAMEPAD_BACK ;
 size_t XINPUT_GAMEPAD_BLACK ;
 int XINPUT_GAMEPAD_DPAD_DOWN ;
 int XINPUT_GAMEPAD_DPAD_LEFT ;
 int XINPUT_GAMEPAD_DPAD_RIGHT ;
 int XINPUT_GAMEPAD_DPAD_UP ;
 int XINPUT_GAMEPAD_LEFT_THUMB ;
 size_t XINPUT_GAMEPAD_LEFT_TRIGGER ;
 int XINPUT_GAMEPAD_MAX_CROSSTALK ;
 int XINPUT_GAMEPAD_RIGHT_THUMB ;
 size_t XINPUT_GAMEPAD_RIGHT_TRIGGER ;
 int XINPUT_GAMEPAD_START ;
 size_t XINPUT_GAMEPAD_WHITE ;
 size_t XINPUT_GAMEPAD_X ;
 size_t XINPUT_GAMEPAD_Y ;
 int* button_index_to_bitmap_code ;
 TYPE_3__* g_xinput_states ;

__attribute__((used)) static bool xdk_joypad_button(unsigned port_num, uint16_t joykey)
{
   uint16_t btn_word = 0;
   unsigned hat_dir = 0;

   if (port_num >= DEFAULT_MAX_PADS)
      return 0;

   btn_word = g_xinput_states[port_num].xstate.Gamepad.wButtons;
   hat_dir = GET_HAT_DIR(joykey);

   if (hat_dir)
   {
      switch (hat_dir)
      {
         case 140:
            return btn_word & XINPUT_GAMEPAD_DPAD_UP;
         case 143:
            return btn_word & XINPUT_GAMEPAD_DPAD_DOWN;
         case 142:
            return btn_word & XINPUT_GAMEPAD_DPAD_LEFT;
         case 141:
            return btn_word & XINPUT_GAMEPAD_DPAD_RIGHT;
      }

      return 0;
   }
   if (joykey < 10)
      return btn_word & button_index_to_bitmap_code[joykey];


   return 0;
}

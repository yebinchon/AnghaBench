
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_8__ {int (* button ) (unsigned int,int) ;} ;
struct TYPE_5__ {int wButtons; } ;
struct TYPE_6__ {TYPE_1__ Gamepad; } ;
struct TYPE_7__ {TYPE_2__ xstate; int connected; } ;


 unsigned int GET_HAT_DIR (int) ;




 int XINPUT_GAMEPAD_DPAD_DOWN ;
 int XINPUT_GAMEPAD_DPAD_LEFT ;
 int XINPUT_GAMEPAD_DPAD_RIGHT ;
 int XINPUT_GAMEPAD_DPAD_UP ;
 int* button_index_to_bitmap_code ;
 TYPE_4__ dinput_joypad ;
 int g_xinput_num_buttons ;
 TYPE_3__* g_xinput_states ;
 int pad_index_to_xuser_index (unsigned int) ;
 int stub1 (unsigned int,int) ;

__attribute__((used)) static bool xinput_joypad_button(unsigned port_num, uint16_t joykey)
{
   uint16_t btn_word = 0;
   unsigned hat_dir = 0;
   int xuser = pad_index_to_xuser_index(port_num);






   if (!(g_xinput_states[xuser].connected))
      return 0;

   btn_word = g_xinput_states[xuser].xstate.Gamepad.wButtons;
   hat_dir = GET_HAT_DIR(joykey);

   if (hat_dir)
   {
      switch (hat_dir)
      {
         case 128:
            return btn_word & XINPUT_GAMEPAD_DPAD_UP;
         case 131:
            return btn_word & XINPUT_GAMEPAD_DPAD_DOWN;
         case 130:
            return btn_word & XINPUT_GAMEPAD_DPAD_LEFT;
         case 129:
            return btn_word & XINPUT_GAMEPAD_DPAD_RIGHT;
      }

      return 0;
   }

   if (joykey < g_xinput_num_buttons)
      return btn_word & button_index_to_bitmap_code[joykey];

   return 0;
}

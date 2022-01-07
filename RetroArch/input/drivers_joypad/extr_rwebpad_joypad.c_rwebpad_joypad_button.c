
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint16_t ;
struct TYPE_3__ {size_t numButtons; int* digitalButton; } ;
typedef TYPE_1__ EmscriptenGamepadEvent ;
typedef scalar_t__ EMSCRIPTEN_RESULT ;


 scalar_t__ EMSCRIPTEN_RESULT_SUCCESS ;
 scalar_t__ emscripten_get_gamepad_status (unsigned int,TYPE_1__*) ;

__attribute__((used)) static bool rwebpad_joypad_button(unsigned port_num, uint16_t joykey)
{
   EmscriptenGamepadEvent gamepad_state;
   EMSCRIPTEN_RESULT r = emscripten_get_gamepad_status(
         port_num, &gamepad_state);

   if (r == EMSCRIPTEN_RESULT_SUCCESS)
      if (joykey < gamepad_state.numButtons)
         return gamepad_state.digitalButton[joykey];

   return 0;
}

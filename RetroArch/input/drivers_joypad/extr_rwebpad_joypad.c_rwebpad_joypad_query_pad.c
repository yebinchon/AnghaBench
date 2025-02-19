
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ connected; } ;
typedef TYPE_1__ EmscriptenGamepadEvent ;
typedef scalar_t__ EMSCRIPTEN_RESULT ;


 scalar_t__ EMSCRIPTEN_RESULT_SUCCESS ;
 scalar_t__ EM_TRUE ;
 scalar_t__ emscripten_get_gamepad_status (unsigned int,TYPE_1__*) ;

__attribute__((used)) static bool rwebpad_joypad_query_pad(unsigned pad)
{
   EmscriptenGamepadEvent gamepad_state;
   EMSCRIPTEN_RESULT r = emscripten_get_gamepad_status(pad, &gamepad_state);

   if (r == EMSCRIPTEN_RESULT_SUCCESS)
      return gamepad_state.connected == EM_TRUE;

   return 0;
}

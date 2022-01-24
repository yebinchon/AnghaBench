#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint16_t ;
struct TYPE_3__ {size_t numButtons; int* digitalButton; } ;
typedef  TYPE_1__ EmscriptenGamepadEvent ;
typedef  scalar_t__ EMSCRIPTEN_RESULT ;

/* Variables and functions */
 scalar_t__ EMSCRIPTEN_RESULT_SUCCESS ; 
 scalar_t__ FUNC0 (unsigned int,TYPE_1__*) ; 

__attribute__((used)) static bool FUNC1(unsigned port_num, uint16_t joykey)
{
   EmscriptenGamepadEvent gamepad_state;
   EMSCRIPTEN_RESULT r = FUNC0(
         port_num, &gamepad_state);

   if (r == EMSCRIPTEN_RESULT_SUCCESS)
      if (joykey < gamepad_state.numButtons)
         return gamepad_state.digitalButton[joykey];

   return false;
}
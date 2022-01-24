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
typedef  int uint32_t ;
typedef  int int16_t ;
struct TYPE_3__ {size_t numAxes; int /*<<< orphan*/ * axis; } ;
typedef  TYPE_1__ EmscriptenGamepadEvent ;
typedef  scalar_t__ EMSCRIPTEN_RESULT ;

/* Variables and functions */
 size_t FUNC0 (int) ; 
 size_t FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ EMSCRIPTEN_RESULT_SUCCESS ; 
 scalar_t__ FUNC3 (unsigned int,TYPE_1__*) ; 

__attribute__((used)) static int16_t FUNC4(unsigned port_num, uint32_t joyaxis)
{
   EmscriptenGamepadEvent gamepad_state;
   EMSCRIPTEN_RESULT r;
   int16_t val = 0;

   if (joyaxis == 0xFFFFFFFF)
      return 0;

   r = FUNC3(port_num, &gamepad_state);

   if (r == EMSCRIPTEN_RESULT_SUCCESS)
   {
      if (FUNC0(joyaxis) < gamepad_state.numAxes)
      {
         val = FUNC2(gamepad_state.axis[FUNC0(joyaxis)]) * 0x7FFF;
         if (val > 0)
            val = 0;
      }
      else if (FUNC1(joyaxis) < gamepad_state.numAxes)
      {
         val = FUNC2(gamepad_state.axis[FUNC1(joyaxis)]) * 0x7FFF;
         if (val < 0)
            val = 0;
      }
   }

   return val;
}
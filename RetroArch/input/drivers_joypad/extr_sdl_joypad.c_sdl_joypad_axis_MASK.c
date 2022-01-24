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
typedef  scalar_t__ uint32_t ;
struct TYPE_3__ {scalar_t__ num_axes; int /*<<< orphan*/  joypad; } ;
typedef  TYPE_1__ sdl_joypad_t ;
typedef  int int16_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ AXIS_NONE ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int FUNC2 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/ * sdl_pads ; 

__attribute__((used)) static int16_t FUNC3(unsigned port, uint32_t joyaxis)
{
   sdl_joypad_t *pad;
   int16_t val       = 0;

   if (joyaxis == AXIS_NONE)
      return 0;

   pad = (sdl_joypad_t*)&sdl_pads[port];
   if (!pad->joypad)
      return false;

   if (FUNC0(joyaxis) < pad->num_axes)
   {
      val = FUNC2(pad, FUNC0(joyaxis));

      if (val > 0)
         val = 0;
      else if (val < -0x7fff) /* -0x8000 can cause trouble if we later abs() it. */
         val = -0x7fff;
   }
   else if (FUNC1(joyaxis) < pad->num_axes)
   {
      val = FUNC2(pad, FUNC1(joyaxis));

      if (val < 0)
         val = 0;
   }

   return val;
}
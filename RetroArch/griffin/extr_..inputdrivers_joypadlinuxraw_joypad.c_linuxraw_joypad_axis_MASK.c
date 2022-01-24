#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct linuxraw_joypad {scalar_t__* axes; } ;
typedef  scalar_t__ int16_t ;

/* Variables and functions */
 size_t FUNC0 (scalar_t__) ; 
 scalar_t__ AXIS_NONE ; 
 size_t FUNC1 (scalar_t__) ; 
 size_t NUM_AXES ; 
 int /*<<< orphan*/ * linuxraw_pads ; 

__attribute__((used)) static int16_t FUNC2(unsigned port, uint32_t joyaxis)
{
   int16_t val = 0;
   const struct linuxraw_joypad *pad = NULL;

   if (joyaxis == AXIS_NONE)
      return 0;

   pad = (const struct linuxraw_joypad*)&linuxraw_pads[port];

   if (FUNC0(joyaxis) < NUM_AXES)
   {
      val = pad->axes[FUNC0(joyaxis)];
      if (val > 0)
         val = 0;
      /* Kernel returns values in range [-0x7fff, 0x7fff]. */
   }
   else if (FUNC1(joyaxis) < NUM_AXES)
   {
      val = pad->axes[FUNC1(joyaxis)];
      if (val < 0)
         val = 0;
   }

   return val;
}
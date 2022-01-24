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
struct android_app {int** analog_state; } ;
typedef  int int16_t ;

/* Variables and functions */
 size_t FUNC0 (scalar_t__) ; 
 scalar_t__ AXIS_NONE ; 
 size_t FUNC1 (scalar_t__) ; 
 size_t MAX_AXIS ; 
 scalar_t__ g_android ; 

__attribute__((used)) static int16_t FUNC2(unsigned port, uint32_t joyaxis)
{
   int val                  = 0;
   struct android_app *android_app = (struct android_app*)g_android;

   if (joyaxis == AXIS_NONE)
      return 0;

   if (FUNC0(joyaxis) < MAX_AXIS)
   {
      val = android_app->analog_state[port][FUNC0(joyaxis)];
      if (val > 0)
         val = 0;
   }
   else if (FUNC1(joyaxis) < MAX_AXIS)
   {
      val = android_app->analog_state[port][FUNC1(joyaxis)];
      if (val < 0)
         val = 0;
   }

   return val;
}
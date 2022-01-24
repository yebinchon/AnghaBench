#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_3__ {int /*<<< orphan*/ * devices; } ;
typedef  TYPE_1__ qnx_input_t ;
struct TYPE_4__ {int* analog0; int* analog1; } ;
typedef  TYPE_2__ qnx_input_device_t ;
typedef  int int16_t ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 scalar_t__ AXIS_NONE ; 
 int FUNC1 (scalar_t__) ; 
 unsigned int DEFAULT_MAX_PADS ; 
 scalar_t__ FUNC2 () ; 

__attribute__((used)) static int16_t FUNC3(unsigned port_num, uint32_t joyaxis)
{
   int val             = 0;
   int axis            = -1;
   bool is_neg         = false;
   bool is_pos         = false;
   qnx_input_t *qnx    = (qnx_input_t*)FUNC2();

   if (!qnx || joyaxis == AXIS_NONE || port_num >= DEFAULT_MAX_PADS)
      return 0;

   if (FUNC0(joyaxis) < 4)
   {
      axis = FUNC0(joyaxis);
      is_neg = true;
   }
   else if (FUNC1(joyaxis) < 4)
   {
      axis = FUNC1(joyaxis);
      is_pos = true;
   }

   qnx_input_device_t* controller = NULL;
   controller = (qnx_input_device_t*)&qnx->devices[port_num];

   switch (axis)
   {
      case 0:
         val = controller->analog0[0];
         break;
      case 1:
          val = controller->analog0[1];
         break;
      case 2:
          val = controller->analog1[0];
         break;
      case 3:
          val = controller->analog1[1];
         break;
   }

   if (is_neg && val > 0)
      val = 0;
   else if (is_pos && val < 0)
      val = 0;

   return val;
}
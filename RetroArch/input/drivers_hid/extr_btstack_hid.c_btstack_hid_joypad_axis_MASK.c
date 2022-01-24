#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ int16_t ;
struct TYPE_2__ {int /*<<< orphan*/ * slots; } ;
typedef  TYPE_1__ btstack_hid_t ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 scalar_t__ AXIS_NONE ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,unsigned int,int) ; 

__attribute__((used)) static int16_t FUNC3(void *data, unsigned port, uint32_t joyaxis)
{
   btstack_hid_t         *hid = (btstack_hid_t*)data;
   int16_t               val  = 0;

   if (joyaxis == AXIS_NONE)
      return 0;

   if (FUNC0(joyaxis) < 4)
   {
      val += FUNC2(&hid->slots[port], port, FUNC0(joyaxis));

      if (val >= 0)
         val = 0;
   }
   else if(FUNC1(joyaxis) < 4)
   {
      val += FUNC2(&hid->slots[port], port, FUNC1(joyaxis));

      if (val <= 0)
         val = 0;
   }

   return val;
}
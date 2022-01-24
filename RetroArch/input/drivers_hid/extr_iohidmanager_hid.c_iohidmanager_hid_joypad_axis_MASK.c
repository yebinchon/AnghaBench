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
struct TYPE_2__ {scalar_t__** axes; int /*<<< orphan*/ * slots; } ;
typedef  TYPE_1__ iohidmanager_hid_t ;
typedef  scalar_t__ int16_t ;

/* Variables and functions */
 size_t FUNC0 (scalar_t__) ; 
 scalar_t__ AXIS_NONE ; 
 size_t FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,unsigned int,size_t) ; 

__attribute__((used)) static int16_t FUNC3(void *data,
      unsigned port, uint32_t joyaxis)
{
   iohidmanager_hid_t   *hid = (iohidmanager_hid_t*)data;
   int16_t               val = 0;

   if (joyaxis == AXIS_NONE)
      return 0;

   if (FUNC0(joyaxis) < 11)
   {
      val += hid->axes[port][FUNC0(joyaxis)];
      val += FUNC2(&hid->slots[port],
            port, FUNC0(joyaxis));

      if (val >= 0)
         val = 0;
   }
   else if (FUNC1(joyaxis) < 11)
   {
      val += hid->axes[port][FUNC1(joyaxis)];
      val += FUNC2(&hid->slots[port],
            port, FUNC1(joyaxis));

      if (val <= 0)
         val = 0;
   }

   return val;
}
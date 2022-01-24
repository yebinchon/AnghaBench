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
struct TYPE_2__ {int* map; scalar_t__* setup; } ;

/* Variables and functions */
 int MAX_LEDS ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,...) ; 
 TYPE_1__* cur ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(int led, int state)
{
   int gpio = 0;

   if((led < 0) || (led >= MAX_LEDS))
   {
      FUNC1("[LED]: invalid led %d\n", led);
      return;
   }

   gpio = cur->map[led];
   if(gpio <= 0)
      return;

   if(cur->setup[led] == 0)
   {
      FUNC0("[LED]: rpi setup led %d gpio %d\n",
            led, gpio, state);
      cur->setup[led] = FUNC3(gpio);
      if(cur->setup[led] <= 0)
      {
         FUNC1("[LED]: failed to setup led %d gpio %d\n",
               led, gpio);
      }
   }
   if(cur->setup[led] > 0)
   {
      FUNC0("[LED]: rpi LED driver set led %d gpio %d = %d\n",
            led, gpio, state);
      FUNC2(gpio, state);
   }
}
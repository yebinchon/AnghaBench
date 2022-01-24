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
struct TYPE_2__ {int* map; } ;

/* Variables and functions */
 int MAX_LEDS ; 
 int /*<<< orphan*/  OVERLAY_VISIBILITY_HIDDEN ; 
 int /*<<< orphan*/  OVERLAY_VISIBILITY_VISIBLE ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 TYPE_1__* cur ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(int led, int state)
{
   int gpio = 0;
   if ((led < 0) || (led >= MAX_LEDS))
   {
      FUNC1("[LED]: invalid led %d\n", led);
      return;
   }

   gpio = cur->map[led];

   if (gpio < 0)
      return;

   FUNC2(gpio,
         state ? OVERLAY_VISIBILITY_VISIBLE
         : OVERLAY_VISIBILITY_HIDDEN);

   FUNC0("[LED]: set visibility %d %d\n", gpio, state);
}
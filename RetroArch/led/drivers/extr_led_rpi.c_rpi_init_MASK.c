#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * led_map; } ;
struct TYPE_6__ {TYPE_1__ uints; } ;
typedef  TYPE_2__ settings_t ;
struct TYPE_7__ {int /*<<< orphan*/ * map; scalar_t__* setup; } ;

/* Variables and functions */
 int MAX_LEDS ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 () ; 
 TYPE_3__* cur ; 

__attribute__((used)) static void FUNC2(void)
{
   int i;
   settings_t *settings = FUNC1();

   if (!settings)
      return;

   for(i = 0; i < MAX_LEDS; i++)
   {
      cur->setup[i] = 0;
      cur->map[i]   = settings->uints.led_map[i];
      FUNC0("[LED]: rpi map[%d]=%d\n", i, cur->map[i]);
   }
}
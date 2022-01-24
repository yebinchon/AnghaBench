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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int runloop_overrides_active ; 

__attribute__((used)) static void FUNC1(void)
{
   if (!runloop_overrides_active)
      return;

   /* reload the original config */
   FUNC0();
   runloop_overrides_active = false;
}
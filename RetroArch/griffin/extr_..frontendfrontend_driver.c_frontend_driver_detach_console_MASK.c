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
struct TYPE_3__ {int /*<<< orphan*/  (* detach_console ) () ;} ;
typedef  TYPE_1__ frontend_ctx_driver_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 

void FUNC2(void)
{
   frontend_ctx_driver_t *frontend = FUNC0();
   if (!frontend || !frontend->detach_console)
      return;
   frontend->detach_console();
}
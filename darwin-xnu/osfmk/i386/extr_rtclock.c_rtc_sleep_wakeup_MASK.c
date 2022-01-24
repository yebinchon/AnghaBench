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
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* rtc_config ) () ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* rtc_timer ; 
 int /*<<< orphan*/  FUNC1 () ; 

void
FUNC2(
	uint64_t		base)
{
    	/* Set fixed configuration for lapic timers */
	rtc_timer->rtc_config();

	/*
	 * Reset nanotime.
	 * The timestamp counter will have been reset
	 * but nanotime (uptime) marches onward.
	 */
	FUNC0(base);
}
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
typedef  scalar_t__ clock_usec_t ;
typedef  scalar_t__ clock_sec_t ;
struct TYPE_4__ {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct TYPE_3__ {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  clock_lock ; 
 TYPE_2__ gIOLastSleepTime ; 
 TYPE_1__ gIOLastWakeTime ; 
 scalar_t__ is_clock_configured ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void
FUNC6()
{
	if (FUNC2()) {
		FUNC3("Warning: clock is locked.  Can't get time\n");
		return;
	}

	if ((is_clock_configured) && (FUNC4(&clock_lock))) {
		clock_sec_t	secs, boot_secs;
		clock_usec_t	usecs, boot_usecs;

		FUNC5(&clock_lock);

		FUNC1(&secs, &usecs);
		FUNC0(&boot_secs, &boot_usecs);

		FUNC3("Epoch Time:        sec       usec\n");
		FUNC3("  Boot    : 0x%08x 0x%08x\n", (unsigned int)boot_secs, (unsigned int)boot_usecs);
		FUNC3("  Sleep   : 0x%08x 0x%08x\n", (unsigned int)gIOLastSleepTime.tv_sec, (unsigned int)gIOLastSleepTime.tv_usec);
		FUNC3("  Wake    : 0x%08x 0x%08x\n", (unsigned int)gIOLastWakeTime.tv_sec, (unsigned int)gIOLastWakeTime.tv_usec);
		FUNC3("  Calendar: 0x%08x 0x%08x\n\n", (unsigned int)secs, (unsigned int)usecs);
	}
}
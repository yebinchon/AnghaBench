#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct alarm {int dummy; } ;
typedef  TYPE_1__* clock_t ;
struct TYPE_5__ {scalar_t__ cl_ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  alarm_zone ; 
 int clock_count ; 
 TYPE_1__* clock_list ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int,char*) ; 

void
FUNC3(void)
{
	clock_t			clock;
	int	i;

	/*
	 * Initialize ipc clock services.
	 */
	for (i = 0; i < clock_count; i++) {
		clock = &clock_list[i];
		if (clock->cl_ops) {
			FUNC1(clock);
			FUNC0(clock);
		}
	}

	/*
	 * Perform miscellaneous late
	 * initialization.
	 */
	i = sizeof(struct alarm);
	alarm_zone = FUNC2(i, (4096/i)*i, 10*i, "alarms");
}
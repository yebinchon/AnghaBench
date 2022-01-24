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
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_3__ {int /*<<< orphan*/  rtcPop; } ;
typedef  TYPE_1__ cpu_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  EndOfAllTime ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

int
FUNC5(void)
{
	uint64_t     abstime;
	cpu_data_t * cdp;

	FUNC0();
	FUNC3();

	cdp = FUNC1();

	abstime = FUNC2();
	cdp->rtcPop = EndOfAllTime;					/* Init Pop time */
	FUNC4();					/* Start the timers going */

	return (1);
}
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
struct TYPE_3__ {int /*<<< orphan*/  tv1; int /*<<< orphan*/  ts1; int /*<<< orphan*/  clock_id; int /*<<< orphan*/  ft0; } ;
typedef  TYPE_1__ timedelta_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC3(timedelta_t *timer)
{

#ifdef _WIN32
	GetSystemTimeAsFileTime(&timer->ft0);
#elif JEMALLOC_CLOCK_GETTIME
	clock_gettime(timer->clock_id, &timer->ts1);
#else
	FUNC2(&timer->tv1, NULL);
#endif
}
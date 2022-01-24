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
struct timezone {scalar_t__ tz_dsttime; scalar_t__ tz_minuteswest; } ;
struct timeval {int tv_usec; int /*<<< orphan*/  tv_sec; } ;
struct _reent {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct _reent *ptr, struct timeval *tp, struct timezone *tz) {

	if (tp != NULL) {
		tp->tv_sec = FUNC2(NULL);
		tp->tv_usec = FUNC1(FUNC0())%1000000;
	}
	if (tz != NULL) {
		tz->tz_minuteswest = 0;
		tz->tz_dsttime = 0;

	}
	return 0;
}
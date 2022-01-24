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
typedef  int /*<<< orphan*/  spl_t ;
typedef  scalar_t__ clock_sec_t ;
typedef  int clock_nsec_t ;

/* Variables and functions */
 int NSEC_PER_USEC ; 
 scalar_t__ clock_boottime ; 
 scalar_t__ clock_boottime_usec ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void
FUNC4(
	clock_sec_t			*secs,
	clock_nsec_t		*nanosecs)
{
	spl_t	s;

	s = FUNC2();
	FUNC0();

	*secs = (clock_sec_t)clock_boottime;
	*nanosecs = (clock_nsec_t)clock_boottime_usec * NSEC_PER_USEC;

	FUNC1();
	FUNC3(s);
}
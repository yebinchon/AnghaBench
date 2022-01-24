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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  SCHED ;

/* Variables and functions */
 int /*<<< orphan*/  NSEC_PER_SEC ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sched_one_second_interval ; 
 int /*<<< orphan*/  FUNC1 () ; 

void
FUNC2(void)
{
	uint64_t	abstime;
	
	FUNC0(1, NSEC_PER_SEC, &abstime);
	sched_one_second_interval = abstime;
	
	SCHED(FUNC3)();
	FUNC1();
}
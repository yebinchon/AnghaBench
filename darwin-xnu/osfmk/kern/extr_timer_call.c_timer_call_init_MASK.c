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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  timer_call_lck_attr ; 
 int /*<<< orphan*/  timer_call_lck_grp ; 
 int /*<<< orphan*/  timer_call_lck_grp_attr ; 
 int /*<<< orphan*/  FUNC4 () ; 

void
FUNC5(void)
{
	FUNC0(&timer_call_lck_attr);
	FUNC1(&timer_call_lck_grp_attr);
	FUNC2(&timer_call_lck_grp, "timer_call", &timer_call_lck_grp_attr);

	FUNC4();
	FUNC3();
}
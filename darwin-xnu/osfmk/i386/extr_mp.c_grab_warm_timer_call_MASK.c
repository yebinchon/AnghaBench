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
typedef  int /*<<< orphan*/ * timer_call_t ;
typedef  int /*<<< orphan*/  spl_t ;

/* Variables and functions */
 int /*<<< orphan*/  cpu_warm_call_list ; 
 int /*<<< orphan*/  cpu_warm_lock ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static timer_call_t
FUNC6()
{
	spl_t x;
	timer_call_t call = NULL;

	x = FUNC4();
	FUNC2(&cpu_warm_lock);
	if (!FUNC1(&cpu_warm_call_list)) {
		call = (timer_call_t) FUNC0(&cpu_warm_call_list);
	}
	FUNC3(&cpu_warm_lock);
	FUNC5(x);

	return call;
}
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
 int DEBUGGER_NO_CPU ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int*,int) ; 
 int FUNC2 () ; 
 int debugger_cpu ; 
 scalar_t__ FUNC3 () ; 

__attribute__((used)) static void
FUNC4()
{
	int my_cpu = FUNC2();
	int debugger_exp_cpu = DEBUGGER_NO_CPU;
	FUNC0(FUNC3() == FALSE);

	if (debugger_cpu == my_cpu) {
		return;
	}

	while(!FUNC1(&debugger_cpu, &debugger_exp_cpu, my_cpu)) {
		debugger_exp_cpu = DEBUGGER_NO_CPU;
	}

	return;
}
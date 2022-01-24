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
typedef  TYPE_1__* processor_t ;
struct TYPE_3__ {int cpu_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASYNC ; 
 int /*<<< orphan*/  DBG_MACH_SCHED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MACH_REMOTE_AST ; 
 int /*<<< orphan*/  MP_AST ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC4(
	processor_t	processor)
{
	int	cpu = processor->cpu_id;

	if (cpu != FUNC2()) {
		FUNC3(cpu, MP_AST, ASYNC);
		FUNC0(FUNC1(DBG_MACH_SCHED, MACH_REMOTE_AST), cpu, 1, 0, 0, 0);
	}
}
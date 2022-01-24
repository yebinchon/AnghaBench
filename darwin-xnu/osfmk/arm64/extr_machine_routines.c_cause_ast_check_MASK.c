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
typedef  TYPE_1__* processor_t ;
struct TYPE_5__ {int /*<<< orphan*/  cpu_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  DBG_MACH_SCHED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MACH_REMOTE_AST ; 
 int /*<<< orphan*/  SIGPast ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,void*) ; 
 TYPE_1__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

void
FUNC5(
		 processor_t processor)
{
	if (FUNC3() != processor) {
		FUNC2(FUNC4(processor), SIGPast, (void *)NULL, (void *)NULL);
		FUNC0(FUNC1(DBG_MACH_SCHED, MACH_REMOTE_AST), processor->cpu_id, 1 /* ast */, 0, 0, 0);
	}
}
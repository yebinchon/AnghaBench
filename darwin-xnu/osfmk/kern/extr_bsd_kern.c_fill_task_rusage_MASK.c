#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* task_t ;
struct task_power_info {int /*<<< orphan*/  total_system; int /*<<< orphan*/  total_user; int /*<<< orphan*/  task_interrupt_wakeups; int /*<<< orphan*/  task_platform_idle_wakeups; } ;
struct TYPE_11__ {int /*<<< orphan*/  ri_pageins; int /*<<< orphan*/  ri_wired_size; int /*<<< orphan*/  ri_resident_size; int /*<<< orphan*/  ri_phys_footprint; int /*<<< orphan*/  ri_system_time; int /*<<< orphan*/  ri_user_time; int /*<<< orphan*/  ri_interrupt_wkups; int /*<<< orphan*/  ri_pkg_idle_wkups; } ;
typedef  TYPE_2__ rusage_info_current ;
typedef  int /*<<< orphan*/  ledger_amount_t ;
struct TYPE_12__ {int /*<<< orphan*/  wired_mem; int /*<<< orphan*/  phys_mem; int /*<<< orphan*/  phys_footprint; } ;
struct TYPE_10__ {int /*<<< orphan*/  pageins; int /*<<< orphan*/  ledger; } ;

/* Variables and functions */
 TYPE_1__* TASK_NULL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_6__ task_ledgers ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,struct task_power_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

int
FUNC5(task_t task, rusage_info_current *ri)
{
	struct task_power_info powerinfo;

	FUNC0(task != TASK_NULL);
	FUNC2(task);

	FUNC3(task, &powerinfo, NULL, NULL);
	ri->ri_pkg_idle_wkups = powerinfo.task_platform_idle_wakeups;
	ri->ri_interrupt_wkups = powerinfo.task_interrupt_wakeups;
	ri->ri_user_time = powerinfo.total_user;
	ri->ri_system_time = powerinfo.total_system;

	FUNC1(task->ledger, task_ledgers.phys_footprint,
	                   (ledger_amount_t *)&ri->ri_phys_footprint);
	FUNC1(task->ledger, task_ledgers.phys_mem,
	                   (ledger_amount_t *)&ri->ri_resident_size);
	FUNC1(task->ledger, task_ledgers.wired_mem,
	                   (ledger_amount_t *)&ri->ri_wired_size);

	ri->ri_pageins = task->pageins;

	FUNC4(task);
	return (0);
}
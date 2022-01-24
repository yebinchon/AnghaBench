#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  task_t ;
struct TYPE_2__ {int /*<<< orphan*/  wired_mem; int /*<<< orphan*/  network_nonvolatile_compressed; int /*<<< orphan*/  network_nonvolatile; int /*<<< orphan*/  page_table; int /*<<< orphan*/  alternate_accounting_compressed; int /*<<< orphan*/  alternate_accounting; int /*<<< orphan*/  iokit_mapped; int /*<<< orphan*/  internal_compressed; int /*<<< orphan*/  internal; int /*<<< orphan*/  purgeable_nonvolatile_compressed; int /*<<< orphan*/  purgeable_nonvolatile; int /*<<< orphan*/  phys_footprint; } ;

/* Variables and functions */
 TYPE_1__ task_ledgers ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC1(
	task_t	old_task,
	task_t	new_task)
{
	FUNC0(old_task, new_task, task_ledgers.phys_footprint);
	FUNC0(old_task, new_task, task_ledgers.purgeable_nonvolatile);
	FUNC0(old_task, new_task, task_ledgers.purgeable_nonvolatile_compressed);
    FUNC0(old_task, new_task, task_ledgers.internal);
    FUNC0(old_task, new_task, task_ledgers.internal_compressed);
    FUNC0(old_task, new_task, task_ledgers.iokit_mapped);
    FUNC0(old_task, new_task, task_ledgers.alternate_accounting);
    FUNC0(old_task, new_task, task_ledgers.alternate_accounting_compressed);
    FUNC0(old_task, new_task, task_ledgers.page_table);
    FUNC0(old_task, new_task, task_ledgers.network_nonvolatile);
    FUNC0(old_task, new_task, task_ledgers.network_nonvolatile_compressed);
    FUNC0(old_task, new_task, task_ledgers.wired_mem);
}
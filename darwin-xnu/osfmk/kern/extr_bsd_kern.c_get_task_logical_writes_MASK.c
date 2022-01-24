#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  TYPE_1__* task_t ;
struct ledger_entry_info {int /*<<< orphan*/  lei_balance; } ;
struct TYPE_8__ {int /*<<< orphan*/  logical_writes; } ;
struct TYPE_7__ {int /*<<< orphan*/  ledger; } ;

/* Variables and functions */
 TYPE_1__* TASK_NULL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ledger_entry_info*) ; 
 TYPE_4__ task_ledgers ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

uint64_t
FUNC4(task_t task)
{
    FUNC0(task != TASK_NULL);
    struct ledger_entry_info lei;

    FUNC2(task);
    FUNC1(task->ledger, task_ledgers.logical_writes, &lei);

    FUNC3(task);
    return lei.lei_balance;
}
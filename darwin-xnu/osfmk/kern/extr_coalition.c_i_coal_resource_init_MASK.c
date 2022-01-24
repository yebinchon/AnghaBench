#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  TYPE_2__* coalition_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_4__ {int /*<<< orphan*/  tasks; int /*<<< orphan*/ * ledger; } ;
struct TYPE_5__ {scalar_t__ type; TYPE_1__ r; } ;

/* Variables and functions */
 scalar_t__ COALITION_TYPE_RESOURCE ; 
 int /*<<< orphan*/  KERN_RESOURCE_SHORTAGE ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  LEDGER_CREATE_ACTIVE_ENTRIES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  task_ledger_template ; 

__attribute__((used)) static kern_return_t
FUNC3(coalition_t coal, boolean_t privileged)
{
	(void)privileged;
	FUNC0(coal && coal->type == COALITION_TYPE_RESOURCE);
	coal->r.ledger = FUNC1(task_ledger_template,
					    LEDGER_CREATE_ACTIVE_ENTRIES);
	if (coal->r.ledger == NULL)
		return KERN_RESOURCE_SHORTAGE;

	FUNC2(&coal->r.tasks);

	return KERN_SUCCESS;
}
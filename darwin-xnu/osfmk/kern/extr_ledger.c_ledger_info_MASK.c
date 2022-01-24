#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* task_t ;
struct ledger_info {int /*<<< orphan*/  li_entries; int /*<<< orphan*/  li_id; int /*<<< orphan*/  li_name; } ;
typedef  TYPE_3__* ledger_t ;
struct TYPE_7__ {int /*<<< orphan*/  l_size; int /*<<< orphan*/  l_id; TYPE_1__* l_template; } ;
struct TYPE_6__ {TYPE_3__* ledger; } ;
struct TYPE_5__ {int /*<<< orphan*/  lt_name; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  LEDGER_NAME_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct ledger_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC2(task_t task, struct ledger_info *info)
{
	ledger_t l;

	if ((l = task->ledger) == NULL)
		return (ENOENT);

	FUNC0(info, 0, sizeof (*info));

	FUNC1(info->li_name, l->l_template->lt_name, LEDGER_NAME_MAX);
	info->li_id = l->l_id;
	info->li_entries = l->l_size;
	return (0);
}
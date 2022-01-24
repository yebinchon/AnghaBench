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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  TYPE_1__* task_t ;
struct ledger_entry_info {int dummy; } ;
struct ledger_entry {int dummy; } ;
typedef  TYPE_2__* ledger_t ;
struct TYPE_5__ {int l_size; struct ledger_entry* l_entries; } ;
struct TYPE_4__ {TYPE_2__* ledger; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 struct ledger_entry_info* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ledger_entry*,struct ledger_entry_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 

int
FUNC3(task_t task, void **buf, int *len)
{
	struct ledger_entry_info *lei;
	struct ledger_entry *le;
	uint64_t now = FUNC2();
	int i;
	ledger_t l;

	if ((*len < 0) || ((l = task->ledger) == NULL))
		return (EINVAL);

	if (*len > l->l_size)
		 *len = l->l_size;
	lei = FUNC0((*len) * sizeof (struct ledger_entry_info));
	if (lei == NULL)
		return (ENOMEM);
	*buf = lei;

	le = l->l_entries;

	for (i = 0; i < *len; i++) {
		FUNC1(le, lei, now);
		le++;
		lei++;
	}

	return (0);
}
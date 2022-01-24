#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ledger_template_info {int /*<<< orphan*/  lti_units; int /*<<< orphan*/  lti_group; int /*<<< orphan*/  lti_name; } ;
struct entry_template {int /*<<< orphan*/  et_units; int /*<<< orphan*/  et_group; int /*<<< orphan*/  et_key; } ;
typedef  TYPE_1__* ledger_t ;
struct TYPE_7__ {TYPE_1__* ledger; } ;
struct TYPE_6__ {struct entry_template* lt_entries; } ;
struct TYPE_5__ {int l_size; TYPE_2__* l_template; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  LEDGER_NAME_MAX ; 
 TYPE_4__* FUNC0 () ; 
 struct ledger_template_info* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ledger_template_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

int
FUNC6(void **buf, int *len)
{
	struct ledger_template_info *lti;
	struct entry_template *et;
	int i;
	ledger_t l;

	/*
	 * Since all tasks share a ledger template, we'll just use the
	 * caller's as the source.
	 */
	l = FUNC0()->ledger;
	if ((*len < 0) || (l == NULL))
		return (EINVAL);

	if (*len > l->l_size)
		 *len = l->l_size;
	lti = FUNC1((*len) * sizeof (struct ledger_template_info));
	if (lti == NULL)
		return (ENOMEM);
	*buf = lti;

	FUNC4(l->l_template);
	et = l->l_template->lt_entries;

	for (i = 0; i < *len; i++) {
		FUNC2(lti, 0, sizeof (*lti));
		FUNC3(lti->lti_name, et->et_key, LEDGER_NAME_MAX);
		FUNC3(lti->lti_group, et->et_group, LEDGER_NAME_MAX);
		FUNC3(lti->lti_units, et->et_units, LEDGER_NAME_MAX);
		et++;
		lti++;
	}
	FUNC5(l->l_template);

	return (0);
}
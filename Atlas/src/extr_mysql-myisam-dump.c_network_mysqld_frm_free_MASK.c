#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_2__* comment; TYPE_2__* connect_string; TYPE_2__* se_name; TYPE_2__* col_values; TYPE_2__* screens; TYPE_2__* columns; TYPE_2__* keyinfo; } ;
typedef  TYPE_1__ network_mysqld_frm ;
typedef  size_t guint ;
struct TYPE_11__ {size_t len; struct TYPE_11__** pdata; } ;
typedef  TYPE_2__ GPtrArray ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

void FUNC6(network_mysqld_frm *frm) {
	guint i;

	if (!frm) return;

	for (i = 0; i < frm->keyinfo->len; i++) {
		FUNC4(frm->keyinfo->pdata[i]);
	}
	FUNC1(frm->keyinfo, TRUE);

	for (i = 0; i < frm->columns->len; i++) {
		FUNC3(frm->columns->pdata[i]);
	}
	FUNC1(frm->columns, TRUE);

	for (i = 0; i < frm->screens->len; i++) {
		FUNC5(frm->screens->pdata[i]);
	}
	FUNC1(frm->screens, TRUE);

	for (i = 0; i < frm->col_values->len; i++) {
		guint j;
		GPtrArray *values = frm->col_values->pdata[i];

		for (j = 0; j < values->len; j++) {
			FUNC2(values->pdata[i], TRUE);
		}
		FUNC1(values, TRUE);
	}
	FUNC1(frm->col_values, TRUE);

	FUNC2(frm->se_name, TRUE);
	FUNC2(frm->connect_string, TRUE);
	FUNC2(frm->comment, TRUE);

	FUNC0(frm);
}
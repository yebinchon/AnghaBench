#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct qfq_if {int qif_maxclasses; int /*<<< orphan*/  qif_ifq; struct qfq_class** qif_class_tbl; } ;
struct qfq_class {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct qfq_if*,struct qfq_class*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC4(struct qfq_if *qif)
{
	struct qfq_class *cl;
	int i;

	FUNC1(qif->qif_ifq);

	for (i = 0; i < qif->qif_maxclasses; i++) {
		if ((cl = qif->qif_class_tbl[i]) != NULL)
			FUNC3(qif, cl, 0, NULL, NULL);
	}
	FUNC2(FUNC0(qif->qif_ifq) == 0);
}
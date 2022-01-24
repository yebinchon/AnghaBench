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
struct qfq_if {int qif_maxclasses; struct qfq_class** qif_class_tbl; int /*<<< orphan*/  qif_ifq; } ;
struct qfq_class {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct qfq_if*,struct qfq_class*) ; 

__attribute__((used)) static int
FUNC2(struct qfq_if *qif)
{
	struct qfq_class *cl;
	int i;

	FUNC0(qif->qif_ifq);

	/* clear out the classes */
	for (i = 0; i < qif->qif_maxclasses; i++)
		if ((cl = qif->qif_class_tbl[i]) != NULL)
			FUNC1(qif, cl);

	return (0);
}
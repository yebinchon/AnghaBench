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
typedef  int /*<<< orphan*/  u_int32_t ;
struct qfq_if {int /*<<< orphan*/  qif_ifq; } ;
struct qfq_classstats {int weight; int /*<<< orphan*/  sfb; int /*<<< orphan*/  qstate; int /*<<< orphan*/  qtype; int /*<<< orphan*/  dropcnt; int /*<<< orphan*/  xmitcnt; int /*<<< orphan*/  period; int /*<<< orphan*/  qlimit; int /*<<< orphan*/  qlength; int /*<<< orphan*/  lmax; int /*<<< orphan*/  index; int /*<<< orphan*/  class_handle; } ;
struct qfq_class {int cl_inv_w; int /*<<< orphan*/ * cl_sfb; int /*<<< orphan*/  cl_q; int /*<<< orphan*/  cl_dropcnt; int /*<<< orphan*/  cl_xmitcnt; int /*<<< orphan*/  cl_period; int /*<<< orphan*/  cl_lmax; TYPE_1__* cl_grp; int /*<<< orphan*/  cl_handle; } ;
struct TYPE_2__ {int /*<<< orphan*/  qfg_index; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int QFQ_ONE_FP ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 struct qfq_class* FUNC2 (struct qfq_if*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int
FUNC8(struct qfq_if *qif, u_int32_t qid,
    struct qfq_classstats *sp)
{
	struct qfq_class *cl;

	FUNC0(qif->qif_ifq);

	if ((cl = FUNC2(qif, qid)) == NULL)
		return (EINVAL);

	sp->class_handle = cl->cl_handle;
	sp->index = cl->cl_grp->qfg_index;
	sp->weight = (QFQ_ONE_FP / cl->cl_inv_w);
	sp->lmax = cl->cl_lmax;
	sp->qlength = FUNC3(&cl->cl_q);
	sp->qlimit = FUNC4(&cl->cl_q);
	sp->period = cl->cl_period;
	sp->xmitcnt = cl->cl_xmitcnt;
	sp->dropcnt = cl->cl_dropcnt;

	sp->qtype = FUNC6(&cl->cl_q);
	sp->qstate = FUNC5(&cl->cl_q);

	if (FUNC1(&cl->cl_q) && cl->cl_sfb != NULL)
		FUNC7(cl->cl_sfb, &sp->sfb);

	return (0);
}
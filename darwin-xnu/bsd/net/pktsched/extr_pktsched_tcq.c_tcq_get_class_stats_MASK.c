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
typedef  int /*<<< orphan*/  u_int32_t ;
struct tcq_if {int /*<<< orphan*/  tif_ifq; } ;
struct tcq_classstats {int /*<<< orphan*/  sfb; int /*<<< orphan*/  qstate; int /*<<< orphan*/  qtype; int /*<<< orphan*/  dropcnt; int /*<<< orphan*/  xmitcnt; int /*<<< orphan*/  period; int /*<<< orphan*/  qlimit; int /*<<< orphan*/  qlength; int /*<<< orphan*/  priority; int /*<<< orphan*/  class_handle; } ;
struct tcq_class {int /*<<< orphan*/ * cl_sfb; int /*<<< orphan*/  cl_q; int /*<<< orphan*/  cl_dropcnt; int /*<<< orphan*/  cl_xmitcnt; int /*<<< orphan*/  cl_period; int /*<<< orphan*/  cl_pri; int /*<<< orphan*/  cl_handle; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct tcq_class* FUNC7 (struct tcq_if*,int /*<<< orphan*/ ) ; 

int
FUNC8(struct tcq_if *tif, u_int32_t qid,
    struct tcq_classstats *sp)
{
	struct tcq_class *cl;

	FUNC0(tif->tif_ifq);

	if ((cl = FUNC7(tif, qid)) == NULL)
		return (EINVAL);

	sp->class_handle = cl->cl_handle;
	sp->priority = cl->cl_pri;
	sp->qlength = FUNC2(&cl->cl_q);
	sp->qlimit = FUNC3(&cl->cl_q);
	sp->period = cl->cl_period;
	sp->xmitcnt = cl->cl_xmitcnt;
	sp->dropcnt = cl->cl_dropcnt;

	sp->qtype = FUNC5(&cl->cl_q);
	sp->qstate = FUNC4(&cl->cl_q);

	if (FUNC1(&cl->cl_q) && cl->cl_sfb != NULL)
		FUNC6(cl->cl_sfb, &sp->sfb);

	return (0);
}
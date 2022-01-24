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
typedef  scalar_t__ u_int64_t ;
typedef  scalar_t__ u_int32_t ;
struct qfq_if {int dummy; } ;
struct qfq_group {scalar_t__ qfg_S; int /*<<< orphan*/  qfg_slot_shift; } ;
struct qfq_class {scalar_t__ cl_inv_w; scalar_t__ cl_S; scalar_t__ cl_F; int /*<<< orphan*/  cl_q; } ;
struct mbuf {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mbuf*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct qfq_group*) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct qfq_if*,struct qfq_group*,struct qfq_class*,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int
FUNC6(struct qfq_if *qif, struct qfq_group *grp,
    struct qfq_class *cl)
{
#pragma unused(qif)
	cl->cl_S = cl->cl_F;
	if (FUNC1(&cl->cl_q))  {
		FUNC2(grp);
	} else {
		u_int32_t len;
		u_int64_t roundedS;

		len = FUNC0((struct mbuf *)FUNC5(&cl->cl_q));
		cl->cl_F = cl->cl_S + (u_int64_t)len * cl->cl_inv_w;
		roundedS = FUNC3(cl->cl_S, grp->qfg_slot_shift);
		if (roundedS == grp->qfg_S)
			return (0);

		FUNC2(grp);
		FUNC4(qif, grp, cl, roundedS);
	}
	return (1);
}
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
struct qfq_class {int /*<<< orphan*/  cl_q; int /*<<< orphan*/ * cl_sfb; TYPE_1__* cl_qif; } ;
typedef  int /*<<< orphan*/  pktsched_pkt_t ;
struct TYPE_2__ {int /*<<< orphan*/  qif_ifq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 void FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 void FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void
FUNC6(struct qfq_class *cl, pktsched_pkt_t *pkt)
{
	FUNC0(cl->cl_qif->qif_ifq);

	if (FUNC3(&cl->cl_q) && cl->cl_sfb != NULL)
		return (FUNC5(cl->cl_sfb, &cl->cl_q, pkt));

	return (FUNC2(pkt, FUNC4(&cl->cl_q), FUNC1(&cl->cl_q)));
}
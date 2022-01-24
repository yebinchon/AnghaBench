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
struct qfq_if {int /*<<< orphan*/  qif_ifq; } ;
struct qfq_class {int cl_inv_w; int /*<<< orphan*/ * cl_sfb; int /*<<< orphan*/  cl_q; int /*<<< orphan*/  cl_handle; } ;
typedef  int /*<<< orphan*/  cqev_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  FUNC1 (struct qfq_if*) ; 
 int QFQ_ONE_FP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ pktsched_verbose ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct qfq_if*) ; 
 void FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(struct qfq_if *qif, struct qfq_class *cl, cqev_t ev)
{
	FUNC0(qif->qif_ifq);

	if (pktsched_verbose) {
		FUNC4(LOG_DEBUG, "%s: %s update qid=%d weight=%d event=%s\n",
		    FUNC2(FUNC1(qif)), FUNC6(qif),
		    cl->cl_handle, (u_int32_t)(QFQ_ONE_FP / cl->cl_inv_w),
		    FUNC3(ev));
	}

	if (FUNC5(&cl->cl_q) && cl->cl_sfb != NULL)
		return (FUNC7(cl->cl_sfb, ev));
}
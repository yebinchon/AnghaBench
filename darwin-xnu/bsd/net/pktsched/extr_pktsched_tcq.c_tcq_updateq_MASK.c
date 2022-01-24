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
struct tcq_if {int /*<<< orphan*/  tif_ifq; } ;
struct tcq_class {int /*<<< orphan*/ * cl_sfb; int /*<<< orphan*/  cl_q; int /*<<< orphan*/  cl_pri; int /*<<< orphan*/  cl_handle; } ;
typedef  int /*<<< orphan*/  cqev_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  FUNC1 (struct tcq_if*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ pktsched_verbose ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 void FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct tcq_if*) ; 

__attribute__((used)) static void
FUNC8(struct tcq_if *tif, struct tcq_class *cl, cqev_t ev)
{
	FUNC0(tif->tif_ifq);

	if (pktsched_verbose) {
		FUNC4(LOG_DEBUG, "%s: %s update qid=%d pri=%d event=%s\n",
		    FUNC2(FUNC1(tif)), FUNC7(tif),
		    cl->cl_handle, cl->cl_pri, FUNC3(ev));
	}

	if (FUNC5(&cl->cl_q) && cl->cl_sfb != NULL)
		return (FUNC6(cl->cl_sfb, ev));
}
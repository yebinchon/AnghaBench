#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct tcq_if {struct tcq_class* tif_default; struct ifclassq* tif_ifq; } ;
struct tcq_class {int /*<<< orphan*/  cl_dropcnt; int /*<<< orphan*/  cl_q; struct tcq_if* cl_tif; } ;
struct pf_mtag {int dummy; } ;
struct ifclassq {int dummy; } ;
struct TYPE_5__ {scalar_t__ pktsched_ptype; } ;
typedef  TYPE_1__ pktsched_pkt_t ;

/* Variables and functions */
 int CLASSQEQ_DROP ; 
 int CLASSQEQ_DROP_FC ; 
 int CLASSQEQ_DROP_SP ; 
 int CLASSQEQ_SUCCESS_FC ; 
 int /*<<< orphan*/  FUNC0 (struct ifclassq*) ; 
 int /*<<< orphan*/  FUNC1 (struct ifclassq*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ifclassq*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ifclassq*) ; 
 int /*<<< orphan*/  FUNC4 (struct ifclassq*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (TYPE_1__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (struct tcq_class*,TYPE_1__*,struct pf_mtag*) ; 
 struct tcq_class* FUNC10 (struct tcq_if*,int /*<<< orphan*/ ) ; 

int
FUNC11(struct tcq_if *tif, struct tcq_class *cl, pktsched_pkt_t *pkt,
    struct pf_mtag *t)
{
	struct ifclassq *ifq = tif->tif_ifq;
	int len, ret;

	FUNC4(ifq);
	FUNC6(cl == NULL || cl->cl_tif == tif);

	if (cl == NULL) {
		cl = FUNC10(tif, 0);
		if (cl == NULL) {
			cl = tif->tif_default;
			if (cl == NULL) {
				FUNC0(ifq);
				return (CLASSQEQ_DROP);
			}
		}
	}

	FUNC6(pkt->pktsched_ptype == FUNC8(&cl->cl_q));
	len = FUNC7(pkt);

	ret = FUNC9(cl, pkt, t);
	if ((ret != 0) && (ret != CLASSQEQ_SUCCESS_FC)) {
		FUNC6(ret == CLASSQEQ_DROP ||
		    ret == CLASSQEQ_DROP_FC ||
		    ret == CLASSQEQ_DROP_SP);
		FUNC5(&cl->cl_dropcnt, 1, len);
		FUNC1(ifq, 1, len);
		return (ret);
	}
	FUNC3(ifq);
	FUNC2(ifq, len);

	/* successfully queued. */
	return (ret);
}
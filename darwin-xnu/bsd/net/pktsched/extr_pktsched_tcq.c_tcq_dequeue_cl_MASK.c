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
typedef  int /*<<< orphan*/  uint32_t ;
struct tcq_if {struct ifclassq* tif_ifq; } ;
struct tcq_class {int /*<<< orphan*/  cl_xmitcnt; int /*<<< orphan*/  cl_period; int /*<<< orphan*/  cl_q; } ;
struct ifclassq {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/ * pktsched_pkt; } ;
typedef  TYPE_1__ pktsched_pkt_t ;
typedef  int /*<<< orphan*/  mbuf_svc_class_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ifclassq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ifclassq*) ; 
 int /*<<< orphan*/  FUNC2 (struct ifclassq*) ; 
 int /*<<< orphan*/  FUNC3 (struct ifclassq*) ; 
 int /*<<< orphan*/  FUNC4 (struct ifclassq*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 struct tcq_class* FUNC10 (struct tcq_if*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct tcq_class*,TYPE_1__*) ; 

__attribute__((used)) static void
FUNC12(struct tcq_if *tif, struct tcq_class *cl, mbuf_svc_class_t sc,
    pktsched_pkt_t *pkt)
{
	struct ifclassq *ifq = tif->tif_ifq;
	uint32_t len;

	FUNC3(ifq);

	if (cl == NULL) {
		cl = FUNC10(tif, FUNC5(sc));
		if (cl == NULL) {
			pkt->pktsched_pkt = NULL;
			return;
		}
	}

	if (FUNC9(&cl->cl_q)) {
		pkt->pktsched_pkt = NULL;
		return;
	}

	FUNC7(!FUNC2(ifq));

	FUNC11(cl, pkt);
	if (pkt->pktsched_pkt != NULL) {
		len = FUNC8(pkt);
		FUNC1(ifq);
		FUNC0(ifq, len);
		if (FUNC9(&cl->cl_q))
			cl->cl_period++;
		FUNC6(&cl->cl_xmitcnt, 1, len);
		FUNC4(ifq, 1, len);
	}
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_21__ {scalar_t__ pktsched_ptype; } ;
typedef  TYPE_2__ pktsched_pkt_t ;
struct TYPE_22__ {size_t fq_sc_index; int fq_flags; } ;
typedef  TYPE_3__ fq_t ;
struct TYPE_23__ {int /*<<< orphan*/  fqs_ifq; TYPE_3__* fqs_large_flow; TYPE_5__* fqs_classq; } ;
typedef  TYPE_4__ fq_if_t ;
struct TYPE_20__ {int /*<<< orphan*/  fcl_drop_overflow; } ;
struct TYPE_24__ {TYPE_1__ fcl_stat; } ;
typedef  TYPE_5__ fq_if_classq_t ;

/* Variables and functions */
 int FQF_NEW_FLOW ; 
 int FQF_OLD_FLOW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PKTF_PRIV_GUARDED ; 
 scalar_t__ QP_MBUF ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,TYPE_5__*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ **,scalar_t__**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

inline void
FUNC11(fq_if_t *fqs)
{
	fq_t *fq = fqs->fqs_large_flow;
	fq_if_classq_t *fq_cl;
	pktsched_pkt_t pkt;
	uint32_t *pkt_flags;
	uint64_t *pkt_timestamp;

	if (fq == NULL)
		return;
	/* queue can not be empty on the largest flow */
	FUNC2(!FUNC4(fq));

	fq_cl = &fqs->fqs_classq[fq->fq_sc_index];
	FUNC3(&pkt);
	(void)FUNC5(fqs, fq, &pkt);

	FUNC10(&pkt, &pkt_flags, &pkt_timestamp, NULL, NULL,
	    NULL, NULL);

	FUNC0(fqs->fqs_ifq);
	*pkt_timestamp = 0;
	if (pkt.pktsched_ptype == QP_MBUF)
		*pkt_flags &= ~PKTF_PRIV_GUARDED;

	if (FUNC4(fq)) {
		fqs->fqs_large_flow = NULL;
		if (fq->fq_flags & FQF_OLD_FLOW) {
			FUNC7(fqs, fq_cl, fq, true);
		} else {
			FUNC2(fq->fq_flags & FQF_NEW_FLOW);
			FUNC6(fq, fq_cl, true);
		}
	}
	FUNC1(fqs->fqs_ifq, 1, FUNC9(&pkt));

	FUNC8(&pkt);
	fq_cl->fcl_stat.fcl_drop_overflow++;
}
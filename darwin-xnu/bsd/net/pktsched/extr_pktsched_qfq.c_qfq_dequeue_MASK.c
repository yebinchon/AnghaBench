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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  scalar_t__ u_int64_t ;
typedef  size_t u_int32_t ;
struct qfq_if {scalar_t__* qif_bitmaps; scalar_t__ qif_V; scalar_t__ qif_queued; int /*<<< orphan*/  qif_emptygrp; struct ifclassq* qif_ifq; } ;
struct qfq_group {scalar_t__ qfg_full_slots; size_t qfg_front; scalar_t__ qfg_F; unsigned long long qfg_slot_shift; scalar_t__ qfg_S; int /*<<< orphan*/  qfg_index; struct qfq_class** qfg_slots; } ;
struct qfq_class {int /*<<< orphan*/  cl_S; int /*<<< orphan*/  cl_F; int /*<<< orphan*/  cl_handle; int /*<<< orphan*/  cl_xmitcnt; int /*<<< orphan*/  cl_period; int /*<<< orphan*/  cl_q; } ;
struct ifclassq {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/ * pktsched_pkt; } ;
typedef  TYPE_1__ pktsched_pkt_t ;
typedef  scalar_t__ pktsched_bitmap_t ;

/* Variables and functions */
 size_t ER ; 
 int /*<<< orphan*/  FUNC0 (struct ifclassq*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct ifclassq*) ; 
 int /*<<< orphan*/  FUNC2 (struct ifclassq*) ; 
 int /*<<< orphan*/  FUNC3 (struct ifclassq*) ; 
 int /*<<< orphan*/  FUNC4 (struct ifclassq*,int,size_t) ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct qfq_if*) ; 
 scalar_t__ QFQ_IWSUM ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,scalar_t__*) ; 
 size_t FUNC13 (TYPE_1__*) ; 
 int pktsched_verbose ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 
 size_t FUNC15 (struct qfq_if*,struct qfq_group*) ; 
 int /*<<< orphan*/  FUNC16 (struct qfq_if*,char*) ; 
 struct qfq_group* FUNC17 (struct qfq_if*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (struct qfq_class*,TYPE_1__*) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ,unsigned long long) ; 
 struct qfq_class* FUNC20 (struct qfq_if*,struct qfq_group*) ; 
 int /*<<< orphan*/  FUNC21 (struct qfq_if*) ; 
 int /*<<< orphan*/  FUNC22 (struct qfq_if*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC23 (struct qfq_if*,struct qfq_group*,struct qfq_class*) ; 
 int /*<<< orphan*/  FUNC24 (struct qfq_if*,scalar_t__) ; 

void
FUNC25(struct qfq_if *qif, pktsched_pkt_t *pkt)
{
	pktsched_bitmap_t er_bits = qif->qif_bitmaps[ER];
	struct ifclassq *ifq = qif->qif_ifq;
	struct qfq_group *grp;
	struct qfq_class *cl;
	u_int64_t old_V;
	u_int32_t len;

	FUNC3(ifq);

	pkt->pktsched_pkt = NULL;

	for (;;) {
		if (er_bits == 0) {
#if QFQ_DEBUG
			if (qif->qif_queued && pktsched_verbose > 1)
				qfq_dump_sched(qif, "start dequeue");
#endif /* QFQ_DEBUG */
			/* no eligible and ready packet */
			return;
		}
		grp = FUNC17(qif, er_bits);
		/* if group is non-empty, use it */
		if (grp->qfg_full_slots != 0)
			break;
		FUNC11(grp->qfg_index, &er_bits);
#if QFQ_DEBUG
		qif->qif_emptygrp++;
#endif /* QFQ_DEBUG */
	}
	FUNC7(!FUNC2(ifq));

	cl = grp->qfg_slots[grp->qfg_front];
	FUNC7(cl != NULL && !FUNC14(&cl->cl_q));

	FUNC18(cl, pkt);
	FUNC7(pkt->pktsched_pkt != NULL); /* qalg must be work conserving */
	len = FUNC13(pkt);

#if QFQ_DEBUG
	qif->qif_queued--;
#endif /* QFQ_DEBUG */

	FUNC1(ifq);
	FUNC0(ifq, len);
	if (FUNC14(&cl->cl_q))
		cl->cl_period++;
	FUNC5(&cl->cl_xmitcnt, 1, len);
	FUNC4(ifq, 1, len);

	old_V = qif->qif_V;
	qif->qif_V += (u_int64_t)len * QFQ_IWSUM;

	if (pktsched_verbose > 2) {
		FUNC10(LOG_DEBUG, "%s: %s qid=%d dequeue pkt=0x%llx F=0x%llx "
		    "V=0x%llx", FUNC9(FUNC6(qif)), FUNC21(qif),
		    cl->cl_handle,
		    (uint64_t)FUNC8(pkt->pktsched_pkt), cl->cl_F,
		    qif->qif_V);
	}

	if (FUNC23(qif, grp, cl)) {
		u_int64_t old_F = grp->qfg_F;

		cl = FUNC20(qif, grp);
		if (!cl) { /* group gone, remove from ER */
			FUNC11(grp->qfg_index, &qif->qif_bitmaps[ER]);
		} else {
			u_int32_t s;
			u_int64_t roundedS =
			    FUNC19(cl->cl_S, grp->qfg_slot_shift);

			if (grp->qfg_S == roundedS)
				goto skip_unblock;

			grp->qfg_S = roundedS;
			grp->qfg_F = roundedS + (2ULL << grp->qfg_slot_shift);

			/* remove from ER and put in the new set */
			FUNC11(grp->qfg_index, &qif->qif_bitmaps[ER]);
			s = FUNC15(qif, grp);
			FUNC12(grp->qfg_index, &qif->qif_bitmaps[s]);
		}
		/* we need to unblock even if the group has gone away */
		FUNC22(qif, grp->qfg_index, old_F);
	}

skip_unblock:
	FUNC24(qif, old_V);

#if QFQ_DEBUG
	if (!qif->qif_bitmaps[ER] && qif->qif_queued && pktsched_verbose > 1)
		qfq_dump_sched(qif, "end dequeue");
#endif /* QFQ_DEBUG */
}
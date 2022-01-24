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
struct qfq_if {unsigned long* qif_bitmaps; int /*<<< orphan*/  qif_V; } ;
struct qfq_group {unsigned long qfg_index; scalar_t__ qfg_full_slots; size_t qfg_front; unsigned long long qfg_slot_shift; scalar_t__ qfg_S; scalar_t__ qfg_F; int /*<<< orphan*/ * qfg_slots; } ;
struct qfq_class {int /*<<< orphan*/  cl_S; int /*<<< orphan*/  cl_F; int /*<<< orphan*/  cl_handle; int /*<<< orphan*/  cl_qif; struct qfq_group* cl_grp; } ;
typedef  int pktsched_bitmap_t ;

/* Variables and functions */
 size_t EB ; 
 size_t ER ; 
 size_t IB ; 
 size_t IR ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long,scalar_t__,size_t,unsigned long,unsigned long,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,unsigned long*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,unsigned long*) ; 
 scalar_t__ FUNC6 (unsigned long,unsigned long*) ; 
 int pktsched_verbose ; 
 int FUNC7 (struct qfq_if*,struct qfq_group*) ; 
 int /*<<< orphan*/  FUNC8 (struct qfq_if*,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct qfq_if*,int,size_t,size_t) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,unsigned long long) ; 
 int /*<<< orphan*/  FUNC11 (struct qfq_if*,struct qfq_group*,struct qfq_class*) ; 
 struct qfq_class* FUNC12 (struct qfq_if*,struct qfq_group*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct qfq_if*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC15(struct qfq_if *qif, struct qfq_class *cl)
{
	struct qfq_group *grp = cl->cl_grp;
	pktsched_bitmap_t mask;
	u_int64_t roundedS;
	int s;

	if (pktsched_verbose) {
		FUNC3(LOG_DEBUG, "%s: %s deactivate qid=%d grp=%d "
		    "full_slots=0x%x front=%d bitmaps={ER=0x%x,EB=0x%x,"
		    "IR=0x%x,IB=0x%x}\n",
		    FUNC2(FUNC0(cl->cl_qif)), FUNC13(cl->cl_qif),
		    cl->cl_handle, grp->qfg_index, grp->qfg_full_slots,
		    grp->qfg_front, qif->qif_bitmaps[ER], qif->qif_bitmaps[EB],
		    qif->qif_bitmaps[IR], qif->qif_bitmaps[IB]);
#if QFQ_DEBUG
		if (pktsched_verbose > 1)
			qfq_dump_sched(qif, "start deactivate");
#endif /* QFQ_DEBUG */
	}

	cl->cl_F = cl->cl_S;	/* not needed if the class goes away */
	FUNC11(qif, grp, cl);

	if (grp->qfg_full_slots == 0) {
		/*
		 * Nothing left in the group, remove from all sets.
		 * Do ER last because if we were blocking other groups
		 * we must unblock them.
		 */
		FUNC4(grp->qfg_index, &qif->qif_bitmaps[IR]);
		FUNC4(grp->qfg_index, &qif->qif_bitmaps[EB]);
		FUNC4(grp->qfg_index, &qif->qif_bitmaps[IB]);

		if (FUNC6(grp->qfg_index, &qif->qif_bitmaps[ER]) &&
		    !(qif->qif_bitmaps[ER] & ~((1UL << grp->qfg_index) - 1))) {
			mask = qif->qif_bitmaps[ER] &
			    ((1UL << grp->qfg_index) - 1);
			if (mask)
				mask = ~((1UL << FUNC1(mask)) - 1);
			else
				mask = (pktsched_bitmap_t)~0UL;
			FUNC9(qif, mask, EB, ER);
			FUNC9(qif, mask, IB, IR);
		}
		FUNC4(grp->qfg_index, &qif->qif_bitmaps[ER]);
	} else if (!grp->qfg_slots[grp->qfg_front]) {
		cl = FUNC12(qif, grp);
		roundedS = FUNC10(cl->cl_S, grp->qfg_slot_shift);
		if (grp->qfg_S != roundedS) {
			FUNC4(grp->qfg_index, &qif->qif_bitmaps[ER]);
			FUNC4(grp->qfg_index, &qif->qif_bitmaps[IR]);
			FUNC4(grp->qfg_index, &qif->qif_bitmaps[EB]);
			FUNC4(grp->qfg_index, &qif->qif_bitmaps[IB]);
			grp->qfg_S = roundedS;
			grp->qfg_F = roundedS + (2ULL << grp->qfg_slot_shift);
			s = FUNC7(qif, grp);
			FUNC5(grp->qfg_index, &qif->qif_bitmaps[s]);
		}
	}
	FUNC14(qif, qif->qif_V);

#if QFQ_DEBUG
	if (pktsched_verbose > 1)
		qfq_dump_sched(qif, "end deactivate");
#endif /* QFQ_DEBUG */
}
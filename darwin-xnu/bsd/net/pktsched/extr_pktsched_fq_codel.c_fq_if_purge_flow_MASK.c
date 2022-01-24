#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int32_t ;
typedef  int /*<<< orphan*/  pktsched_pkt_t ;
struct TYPE_17__ {size_t fq_sc_index; int fq_flags; } ;
typedef  TYPE_1__ fq_t ;
struct TYPE_18__ {int /*<<< orphan*/ * fqs_bitmaps; int /*<<< orphan*/  fqs_ifq; TYPE_3__* fqs_classq; } ;
typedef  TYPE_2__ fq_if_t ;
struct TYPE_19__ {int /*<<< orphan*/  fcl_pri; } ;
typedef  TYPE_3__ fq_if_classq_t ;

/* Variables and functions */
 int FQF_NEW_FLOW ; 
 int FQF_OLD_FLOW ; 
 scalar_t__ FUNC0 (TYPE_3__*) ; 
 int FQ_IF_ER ; 
 int FQ_IF_MAX_STATE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_3__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,TYPE_3__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC10(fq_if_t *fqs, fq_t *fq, u_int32_t *pktsp,
    u_int32_t *bytesp)
{
	fq_if_classq_t *fq_cl;
	u_int32_t pkts, bytes;
	pktsched_pkt_t pkt;

	fq_cl = &fqs->fqs_classq[fq->fq_sc_index];
	pkts = bytes = 0;
	FUNC2(&pkt);
	while (FUNC3(fqs, fq, &pkt) != NULL) {
		pkts++;
		bytes += FUNC9(&pkt);
		FUNC8(&pkt);
	}
	FUNC1(fqs->fqs_ifq, pkts, bytes);

	if (fq->fq_flags & FQF_NEW_FLOW) {
		FUNC5(fq, fq_cl, false);
	} else if (fq->fq_flags & FQF_OLD_FLOW) {
		FUNC6(fqs, fq_cl, fq, false);
	}

	FUNC4(fqs, fq_cl, fq);

	if (FUNC0(fq_cl)) {
		int i;
		for (i = FQ_IF_ER; i < FQ_IF_MAX_STATE; i++) {
			FUNC7(fq_cl->fcl_pri,
			    &fqs->fqs_bitmaps[i]);
		}
	}
	if (pktsp != NULL)
		*pktsp = pkts;
	if (bytesp != NULL)
		*bytesp = bytes;
}
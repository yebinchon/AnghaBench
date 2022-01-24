#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  scalar_t__ u_int64_t ;
struct timespec {int tv_sec; scalar_t__ tv_nsec; } ;
struct TYPE_19__ {scalar_t__ pktsched_ptype; } ;
typedef  TYPE_1__ pktsched_pkt_t ;
typedef  scalar_t__ int64_t ;
struct TYPE_20__ {size_t fq_sc_index; scalar_t__ fq_min_qdelay; scalar_t__ fq_updatetime; int fq_flags; scalar_t__ fq_getqtime; } ;
typedef  TYPE_2__ fq_t ;
struct TYPE_21__ {scalar_t__ fqs_target_qdelay; scalar_t__ fqs_update_interval; int /*<<< orphan*/ * fqs_classq; } ;
typedef  TYPE_3__ fq_if_t ;
typedef  int /*<<< orphan*/  fq_if_classq_t ;

/* Variables and functions */
 int FQF_FLOWCTL_ON ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int NSEC_PER_SEC ; 
 int /*<<< orphan*/  PKTF_PRIV_GUARDED ; 
 scalar_t__ QP_MBUF ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 void* FUNC4 (TYPE_3__*,TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (struct timespec*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ **,scalar_t__**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void *
FUNC9(fq_if_t *fqs, fq_t *fq, pktsched_pkt_t *pkt)
{
	void *p;
	fq_if_classq_t *fq_cl;
	u_int64_t now;
	int64_t qdelay = 0;
	struct timespec now_ts;
	uint32_t *pkt_flags, pkt_tx_start_seq;
	uint64_t *pkt_timestamp;

	p = FUNC4(fqs, fq, pkt);
	if (p == NULL)
		return (NULL);

	FUNC8(pkt, &pkt_flags, &pkt_timestamp, NULL, NULL,
	    NULL, &pkt_tx_start_seq);

	FUNC7(&now_ts);
	now = (now_ts.tv_sec * NSEC_PER_SEC) + now_ts.tv_nsec;

	/* this will compute qdelay in nanoseconds */
	if (now > *pkt_timestamp)
		qdelay = now - *pkt_timestamp;
	fq_cl = &fqs->fqs_classq[fq->fq_sc_index];

	if (fq->fq_min_qdelay == 0 ||
	    (qdelay > 0 && (u_int64_t)qdelay < fq->fq_min_qdelay))
		fq->fq_min_qdelay = qdelay;
	if (now >= fq->fq_updatetime) {
		if (fq->fq_min_qdelay > fqs->fqs_target_qdelay) {
			if (!FUNC1(fq))
				FUNC2(fq);
		} else {
			FUNC0(fq);
		}


		/* Reset measured queue delay and update time */
		fq->fq_updatetime = now + fqs->fqs_update_interval;
		fq->fq_min_qdelay = 0;
	}
	if (!FUNC1(fq) || FUNC3(fq)) {
		FUNC0(fq);
		if (fq->fq_flags & FQF_FLOWCTL_ON) {
			FUNC5(fqs, fq, fq_cl);
		}
	}

	if (FUNC3(fq)) {
		/* Reset getqtime so that we don't count idle times */
		fq->fq_getqtime = 0;
	} else {
		fq->fq_getqtime = now;
	}
	FUNC6(fqs, fq);

	*pkt_timestamp = 0;
	if (pkt->pktsched_ptype == QP_MBUF)
		*pkt_flags &= ~PKTF_PRIV_GUARDED;

	return (p);
}
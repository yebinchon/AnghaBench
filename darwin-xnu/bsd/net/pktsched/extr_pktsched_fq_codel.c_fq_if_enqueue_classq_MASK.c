#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u_int32_t ;
struct ifclassq {scalar_t__ ifcq_disc; } ;
typedef  int /*<<< orphan*/  pktsched_pkt_t ;
typedef  TYPE_2__* mbuf_t ;
typedef  scalar_t__ mbuf_svc_class_t ;
struct TYPE_12__ {int fqs_throttle; int fqs_flags; int* fqs_bitmaps; TYPE_4__* fqs_classq; } ;
typedef  TYPE_3__ fq_if_t ;
struct TYPE_10__ {int /*<<< orphan*/  fcl_throttle_drops; } ;
struct TYPE_13__ {TYPE_1__ fcl_stat; } ;
typedef  TYPE_4__ fq_if_classq_t ;
typedef  int /*<<< orphan*/  classq_pkt_type_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_11__ {int m_flags; } ;

/* Variables and functions */
#define  CLASSQEQ_DROP 130 
#define  CLASSQEQ_DROP_FC 129 
#define  CLASSQEQ_DROP_SP 128 
 int CLASSQEQ_SUCCESS_FC ; 
 int ENOBUFS ; 
 int EQFULL ; 
 int EQSUSPENDED ; 
 int /*<<< orphan*/  FALSE ; 
 int FQS_DRIVER_MANAGED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 size_t FQ_IF_EB ; 
 size_t FQ_IF_ER ; 
 size_t FQ_IF_IB ; 
 size_t FQ_IF_MAX_CLASSES ; 
 int /*<<< orphan*/  FUNC1 (struct ifclassq*) ; 
 int /*<<< orphan*/  FUNC2 (struct ifclassq*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ifclassq*) ; 
 int /*<<< orphan*/  FUNC4 (struct ifclassq*) ; 
 scalar_t__ MBUF_SC_BK_SYS ; 
 int M_PKTHDR ; 
 int /*<<< orphan*/  QP_MBUF ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (TYPE_3__*,int /*<<< orphan*/ *,TYPE_4__*) ; 
 size_t FUNC7 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (size_t,int*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 

int
FUNC14(struct ifclassq *ifq, void *p, classq_pkt_type_t ptype,
    boolean_t *pdrop)
{
	u_int32_t pri;
	fq_if_t *fqs;
	fq_if_classq_t *fq_cl;
	int ret, len;
	mbuf_svc_class_t svc;
	pktsched_pkt_t pkt;

	FUNC4(ifq);
	if ((ptype == QP_MBUF) && !(((mbuf_t)p)->m_flags & M_PKTHDR)) {
		FUNC1(ifq);
		FUNC8((mbuf_t)p);
		*pdrop = TRUE;
		return (ENOBUFS);
	}
	FUNC13(&pkt, ptype, p);

	fqs = (fq_if_t *)ifq->ifcq_disc;
	svc = FUNC12(&pkt);
	pri = FUNC7(fqs, svc);
	FUNC5(pri >= 0 && pri < FQ_IF_MAX_CLASSES);
	fq_cl = &fqs->fqs_classq[pri];

	if (svc == MBUF_SC_BK_SYS && fqs->fqs_throttle == 1) {
		/* BK_SYS is currently throttled */
		fq_cl->fcl_stat.fcl_throttle_drops++;
		FUNC1(ifq);
		FUNC10(&pkt);
		*pdrop = TRUE;
		return (EQSUSPENDED);
	}

	len = FUNC11(&pkt);
	ret = FUNC6(fqs, &pkt, fq_cl);
	if (!(fqs->fqs_flags & FQS_DRIVER_MANAGED) &&
	    !FUNC0(fq_cl)) {
		if (((fqs->fqs_bitmaps[FQ_IF_ER] | fqs->fqs_bitmaps[FQ_IF_EB]) &
		    (1 << pri)) == 0) {
			/*
			 * this group is not in ER or EB groups,
			 * mark it as IB
			 */
			FUNC9(pri, &fqs->fqs_bitmaps[FQ_IF_IB]);
		}
	}

	if (ret != 0) {
		if (ret == CLASSQEQ_SUCCESS_FC) {
			/* packet enqueued, return advisory feedback */
			ret = EQFULL;
			*pdrop = FALSE;
		} else {
			*pdrop = TRUE;
			FUNC5(ret == CLASSQEQ_DROP ||
			    ret == CLASSQEQ_DROP_FC ||
			    ret == CLASSQEQ_DROP_SP);
			FUNC10(&pkt);
			switch (ret) {
			case CLASSQEQ_DROP:
				return (ENOBUFS);
			case CLASSQEQ_DROP_FC:
				return (EQFULL);
			case CLASSQEQ_DROP_SP:
				return (EQSUSPENDED);
			}
		}
	} else {
		*pdrop = FALSE;
	}
	FUNC3(ifq);
	FUNC2(ifq, len);
	return (ret);
}
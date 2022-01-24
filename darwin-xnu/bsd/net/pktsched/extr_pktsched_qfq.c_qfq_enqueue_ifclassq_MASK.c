#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int32_t ;
struct pf_mtag {int dummy; } ;
struct mbuf {int m_flags; } ;
struct ifclassq {TYPE_1__* ifcq_disc_slots; int /*<<< orphan*/  ifcq_disc; int /*<<< orphan*/  ifcq_ifp; } ;
typedef  int /*<<< orphan*/  pktsched_pkt_t ;
typedef  int /*<<< orphan*/  classq_pkt_type_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_2__ {int /*<<< orphan*/  cl; } ;

/* Variables and functions */
#define  CLASSQEQ_DROP 133 
#define  CLASSQEQ_DROP_FC 132 
#define  CLASSQEQ_DROP_SP 131 
#define  CLASSQEQ_SUCCESS 130 
#define  CLASSQEQ_SUCCESS_FC 129 
 int ENOBUFS ; 
 int EQFULL ; 
 int EQSUSPENDED ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (struct ifclassq*) ; 
 int /*<<< orphan*/  FUNC1 (struct ifclassq*) ; 
 scalar_t__ IFCQ_SC_MAX ; 
 int /*<<< orphan*/  LOG_ERR ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int M_PKTHDR ; 
#define  QP_MBUF 128 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mbuf*) ; 
 struct pf_mtag* FUNC7 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC8 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct pf_mtag*) ; 

__attribute__((used)) static int
FUNC12(struct ifclassq *ifq, void *p, classq_pkt_type_t ptype,
    boolean_t *pdrop)
{
	u_int32_t i = 0;
	int ret;
	pktsched_pkt_t pkt;
	struct pf_mtag *t = NULL;

	FUNC1(ifq);

	switch (ptype) {
	case QP_MBUF: {
		struct mbuf *m = p;
		if (!(m->m_flags & M_PKTHDR)) {
			/* should not happen */
			FUNC5(LOG_ERR, "%s: packet does not have pkthdr\n",
			    FUNC4(ifq->ifcq_ifp));
			FUNC0(ifq);
			FUNC6(m);
			*pdrop = TRUE;
			return (ENOBUFS);
		}
		i = FUNC2(FUNC8(m));
		t =  FUNC7(m);
		break;
	}


	default:
		FUNC3(0);
		/* NOTREACHED */
	}

	FUNC3((u_int32_t)i < IFCQ_SC_MAX);

	FUNC10(&pkt, ptype, p);

	ret = FUNC11(ifq->ifcq_disc,
	    ifq->ifcq_disc_slots[i].cl, &pkt, t);

	if ((ret != 0) && (ret != CLASSQEQ_SUCCESS_FC)) {
		FUNC9(&pkt);
		*pdrop = TRUE;
	} else {
		*pdrop = FALSE;
	}

	switch (ret) {
	case CLASSQEQ_DROP:
		ret = ENOBUFS;
		break;
	case CLASSQEQ_DROP_FC:
		ret = EQFULL;
		break;
	case CLASSQEQ_DROP_SP:
		ret = EQSUSPENDED;
		break;
	case CLASSQEQ_SUCCESS_FC:
		ret = EQFULL;
		break;
	case CLASSQEQ_SUCCESS:
		ret = 0;
		break;
	default:
		FUNC3(0);
	}
	return (ret);
}
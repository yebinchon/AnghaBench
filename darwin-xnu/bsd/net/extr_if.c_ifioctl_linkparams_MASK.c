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
typedef  int u_long ;
typedef  int /*<<< orphan*/  u_int64_t ;
typedef  int /*<<< orphan*/  u_int32_t ;
struct tb_profile {int /*<<< orphan*/  percent; int /*<<< orphan*/  rate; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct proc {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  tbr_percent; int /*<<< orphan*/  tbr_rate_raw; } ;
struct ifclassq {TYPE_1__ ifcq_tbr; int /*<<< orphan*/  ifcq_type; } ;
struct ifnet {int /*<<< orphan*/  if_input_lt; int /*<<< orphan*/  if_output_lt; int /*<<< orphan*/  if_input_bw; int /*<<< orphan*/  if_output_bw; int /*<<< orphan*/  if_output_sched_model; struct ifclassq if_snd; } ;
struct if_linkparamsreq {int /*<<< orphan*/  iflpr_input_lt; int /*<<< orphan*/  iflpr_output_lt; int /*<<< orphan*/  iflpr_input_bw; int /*<<< orphan*/  iflpr_output_bw; int /*<<< orphan*/  iflpr_flags; int /*<<< orphan*/  iflpr_output_tbr_percent; int /*<<< orphan*/  iflpr_output_tbr_rate; int /*<<< orphan*/  iflpr_output_sched; } ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (struct ifclassq*) ; 
 int /*<<< orphan*/  FUNC1 (struct ifclassq*) ; 
 int /*<<< orphan*/  FUNC2 (struct ifclassq*) ; 
 int /*<<< orphan*/  FUNC3 (struct ifclassq*) ; 
 int /*<<< orphan*/  FUNC4 (struct ifclassq*) ; 
 int /*<<< orphan*/  IFLPRF_DRVMANAGED ; 
 int /*<<< orphan*/  IFNET_SCHED_MODEL_DRIVER_MANAGED ; 
 int /*<<< orphan*/  PKTSCHEDT_NONE ; 
#define  SIOCGIFLINKPARAMS 129 
#define  SIOCSIFLINKPARAMS 128 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC7 (struct ifclassq*,struct tb_profile*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct proc*) ; 

__attribute__((used)) static __attribute__((noinline)) int
FUNC9(struct ifnet *ifp, u_long cmd, caddr_t data, struct proc *p)
{
	struct if_linkparamsreq *iflpr =
	    (struct if_linkparamsreq *)(void *)data;
	struct ifclassq *ifq;
	int error = 0;

	FUNC5(ifp != NULL);
	ifq = &ifp->if_snd;

	switch (cmd) {
	case SIOCSIFLINKPARAMS: {		/* struct if_linkparamsreq */
		struct tb_profile tb = { 0, 0, 0 };

		if ((error = FUNC8(p)) != 0)
			break;


		FUNC2(ifq);
		if (!FUNC1(ifq)) {
			error = ENXIO;
			FUNC4(ifq);
			break;
		}
		FUNC6(&iflpr->iflpr_output_tbr_rate, &tb.rate,
		    sizeof (tb.rate));
		FUNC6(&iflpr->iflpr_output_tbr_percent, &tb.percent,
		    sizeof (tb.percent));
		error = FUNC7(ifq, &tb, TRUE);
		FUNC4(ifq);
		break;
	}

	case SIOCGIFLINKPARAMS: {		/* struct if_linkparamsreq */
		u_int32_t sched_type = PKTSCHEDT_NONE, flags = 0;
		u_int64_t tbr_bw = 0, tbr_pct = 0;

		FUNC2(ifq);

		if (FUNC0(ifq))
			sched_type = ifq->ifcq_type;

		FUNC6(&sched_type, &iflpr->iflpr_output_sched,
		    sizeof (iflpr->iflpr_output_sched));

		if (FUNC3(ifq)) {
			tbr_bw = ifq->ifcq_tbr.tbr_rate_raw;
			tbr_pct = ifq->ifcq_tbr.tbr_percent;
		}
		FUNC6(&tbr_bw, &iflpr->iflpr_output_tbr_rate,
		    sizeof (iflpr->iflpr_output_tbr_rate));
		FUNC6(&tbr_pct, &iflpr->iflpr_output_tbr_percent,
		    sizeof (iflpr->iflpr_output_tbr_percent));
		FUNC4(ifq);

		if (ifp->if_output_sched_model ==
		    IFNET_SCHED_MODEL_DRIVER_MANAGED)
			flags |= IFLPRF_DRVMANAGED;
		FUNC6(&flags, &iflpr->iflpr_flags, sizeof (iflpr->iflpr_flags));
		FUNC6(&ifp->if_output_bw, &iflpr->iflpr_output_bw,
		    sizeof (iflpr->iflpr_output_bw));
		FUNC6(&ifp->if_input_bw, &iflpr->iflpr_input_bw,
		    sizeof (iflpr->iflpr_input_bw));
		FUNC6(&ifp->if_output_lt, &iflpr->iflpr_output_lt,
		    sizeof (iflpr->iflpr_output_lt));
		FUNC6(&ifp->if_input_lt, &iflpr->iflpr_input_lt,
		    sizeof (iflpr->iflpr_input_lt));
		break;
	}

	default:
		FUNC5(0);
		/* NOTREACHED */
	}

	return (error);
}
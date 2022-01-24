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
typedef  int u_int64_t ;
typedef  int u_int32_t ;
struct timespec {int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct tb_regulator {int tbr_rate_raw; int tbr_percent; int tbr_rate; int tbr_depth; int tbr_filluptime; int tbr_token; int /*<<< orphan*/  tbr_last; } ;
struct tb_profile {int rate; int percent; int depth; } ;
struct TYPE_2__ {int eff_bw; } ;
struct ifnet {int if_mtu; int if_flags; TYPE_1__ if_output_bw; } ;
struct ifclassq {int ifcq_flags; struct tb_regulator ifcq_tbr; struct ifnet* ifcq_ifp; } ;
typedef  int int64_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  CLASSQ_EV_LINK_BANDWIDTH ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOENT ; 
 int IFCQF_TBR ; 
 int FUNC0 (struct ifclassq*) ; 
 int /*<<< orphan*/  FUNC1 (struct ifclassq*) ; 
 int /*<<< orphan*/  FUNC2 (struct ifclassq*) ; 
 int IFF_UP ; 
 int IF_MINMTU ; 
 int NSEC_PER_MSEC ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct tb_regulator*,int) ; 
 char* FUNC7 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC8 (struct ifclassq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ifnet*,struct timespec*) ; 
 int machclk_freq ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int FUNC11 (int) ; 
 scalar_t__ pktsched_verbose ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC13 () ; 

int
FUNC14(struct ifclassq *ifq, struct tb_profile *profile,
    boolean_t update)
{
	struct tb_regulator *tbr;
	struct ifnet *ifp = ifq->ifcq_ifp;
	u_int64_t rate, old_rate;

	FUNC1(ifq);
	FUNC5(FUNC0(ifq));

	FUNC5(machclk_freq != 0);

	tbr = &ifq->ifcq_tbr;
	old_rate = tbr->tbr_rate_raw;

	rate = profile->rate;
	if (profile->percent > 0) {
		u_int64_t eff_rate;

		if (profile->percent > 100)
			return (EINVAL);
		if ((eff_rate = ifp->if_output_bw.eff_bw) == 0)
			return (ENODEV);
		rate = (eff_rate * profile->percent) / 100;
	}

	if (rate == 0) {
		if (!FUNC2(ifq))
			return (ENOENT);

		if (pktsched_verbose)
			FUNC12("%s: TBR disabled\n", FUNC7(ifp));

		/* disable this TBR */
		ifq->ifcq_flags &= ~IFCQF_TBR;
		FUNC6(tbr, sizeof (*tbr));
		FUNC9(ifp, NULL);
		if (update)
			FUNC8(ifq, CLASSQ_EV_LINK_BANDWIDTH);
		return (0);
	}

	if (pktsched_verbose) {
		FUNC12("%s: TBR %s (rate %llu bps depth %u)\n", FUNC7(ifp),
		    (ifq->ifcq_flags & IFCQF_TBR) ? "reconfigured" :
		    "enabled", rate, profile->depth);
	}

	/* set the new TBR */
	FUNC6(tbr, sizeof (*tbr));
	tbr->tbr_rate_raw = rate;
	tbr->tbr_percent = profile->percent;
	ifq->ifcq_flags |= IFCQF_TBR;

	/*
	 * Note that the TBR fill up time (hence the ifnet restart time)
	 * is directly related to the specified TBR depth.  The ideal
	 * depth value should be computed such that the interval time
	 * between each successive wakeup is adequately spaced apart,
	 * in order to reduce scheduling overheads.  A target interval
	 * of 10 ms seems to provide good performance balance.  This can be
	 * overridden by specifying the depth profile.  Values smaller than
	 * the ideal depth will reduce delay at the expense of CPU cycles.
	 */
	tbr->tbr_rate = FUNC3(rate / 8) / machclk_freq;
	if (tbr->tbr_rate > 0) {
		u_int32_t mtu = ifp->if_mtu;
		int64_t ival, idepth = 0;
		int i;

		if (mtu < IF_MINMTU)
			mtu = IF_MINMTU;

		ival = FUNC11(10 * NSEC_PER_MSEC); /* 10ms */

		for (i = 1; ; i++) {
			idepth = FUNC3(i * mtu);
			if ((idepth / tbr->tbr_rate) > ival)
				break;
		}
		FUNC5(idepth > 0);

		tbr->tbr_depth = FUNC3(profile->depth);
		if (tbr->tbr_depth == 0) {
			tbr->tbr_filluptime = idepth / tbr->tbr_rate;
			/* a little fudge factor to get closer to rate */
			tbr->tbr_depth = idepth + (idepth >> 3);
		} else {
			tbr->tbr_filluptime = tbr->tbr_depth / tbr->tbr_rate;
		}
	} else {
		tbr->tbr_depth = FUNC3(profile->depth);
		tbr->tbr_filluptime = 0xffffffffffffffffLL;
	}
	tbr->tbr_token = tbr->tbr_depth;
	tbr->tbr_last = FUNC13();

	if (tbr->tbr_rate > 0 && (ifp->if_flags & IFF_UP)) {
		struct timespec ts =
		    { 0, FUNC10(tbr->tbr_filluptime) };
		if (pktsched_verbose) {
			FUNC12("%s: TBR calculated tokens %lld "
			    "filluptime %llu ns\n", FUNC7(ifp),
			    FUNC4(tbr->tbr_token),
			    FUNC10(tbr->tbr_filluptime));
		}
		FUNC9(ifp, &ts);
	} else {
		if (pktsched_verbose) {
			if (tbr->tbr_rate == 0) {
				FUNC12("%s: TBR calculated tokens %lld "
				    "infinite filluptime\n", FUNC7(ifp),
				    FUNC4(tbr->tbr_token));
			} else if (!(ifp->if_flags & IFF_UP)) {
				FUNC12("%s: TBR suspended (link is down)\n",
				    FUNC7(ifp));
			}
		}
		FUNC9(ifp, NULL);
	}
	if (update && tbr->tbr_rate_raw != old_rate)
		FUNC8(ifq, CLASSQ_EV_LINK_BANDWIDTH);

	return (0);
}
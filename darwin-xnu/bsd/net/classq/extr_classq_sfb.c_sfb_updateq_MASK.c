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
typedef  char* u_int64_t ;
struct sfb {char* sfb_eff_rate; int /*<<< orphan*/  sfb_qid; int /*<<< orphan*/  sfb_target_qdelay; struct ifnet* sfb_ifp; } ;
struct ifnet {int dummy; } ;
typedef  int cqev_t ;

/* Variables and functions */
#define  CLASSQ_EV_LINK_BANDWIDTH 132 
#define  CLASSQ_EV_LINK_DOWN 131 
#define  CLASSQ_EV_LINK_LATENCY 130 
#define  CLASSQ_EV_LINK_MTU 129 
#define  CLASSQ_EV_LINK_UP 128 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  classq_verbose ; 
 int /*<<< orphan*/  FUNC1 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*,int /*<<< orphan*/ *) ; 
 char* FUNC3 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct sfb*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct sfb*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct sfb*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct sfb*,int) ; 

void
FUNC9(struct sfb *sp, cqev_t ev)
{
	struct ifnet *ifp = sp->sfb_ifp;

	FUNC0(ifp != NULL);

	switch (ev) {
	case CLASSQ_EV_LINK_BANDWIDTH: {
		u_int64_t eff_rate = FUNC3(ifp);

		/* update parameters only if rate has changed */
		if (eff_rate == sp->sfb_eff_rate)
			break;

		if (classq_verbose) {
			FUNC4(LOG_DEBUG, "%s: SFB qid=%d, adapting to new "
			    "eff_rate=%llu bps\n", FUNC1(ifp), sp->sfb_qid,
			    eff_rate);
		}
		FUNC5(sp, eff_rate);
		FUNC6(sp, eff_rate);
		FUNC2(ifp, &sp->sfb_target_qdelay);
		FUNC7(sp, eff_rate);
		break;
	}

	case CLASSQ_EV_LINK_UP:
	case CLASSQ_EV_LINK_DOWN:
		if (classq_verbose) {
			FUNC4(LOG_DEBUG, "%s: SFB qid=%d, resetting due to "
			    "link %s\n", FUNC1(ifp), sp->sfb_qid,
			    (ev == CLASSQ_EV_LINK_UP) ? "UP" : "DOWN");
		}
		FUNC8(sp, ev);
		break;

	case CLASSQ_EV_LINK_LATENCY:
	case CLASSQ_EV_LINK_MTU:
	default:
		break;
	}
}
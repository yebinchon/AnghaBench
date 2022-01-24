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
struct sfb {int sfb_flags; scalar_t__ sfb_qid; scalar_t__ sfb_qlim; struct ifnet* sfb_ifp; struct sfb* sfb_fc_lists; struct sfb* sfb_bins; } ;
struct ifnet {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  fclist; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLASSQ_EV_INIT ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int SFBF_ECN ; 
 scalar_t__ SFBF_USERFLAGS ; 
 int SFB_BINS ; 
 TYPE_1__* FUNC0 (struct sfb*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct sfb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  sfb_bins_size ; 
 int /*<<< orphan*/  sfb_bins_zone ; 
 int /*<<< orphan*/  FUNC6 (struct sfb*) ; 
 int /*<<< orphan*/  sfb_fcl_size ; 
 int /*<<< orphan*/  sfb_fcl_zone ; 
 int /*<<< orphan*/  FUNC7 (struct sfb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sfb_size ; 
 int /*<<< orphan*/  sfb_zone ; 
 void* FUNC8 (int /*<<< orphan*/ ) ; 

struct sfb *
FUNC9(struct ifnet *ifp, u_int32_t qid, u_int32_t qlim, u_int32_t flags)
{
	struct sfb *sp;
	int i;

	FUNC2(ifp != NULL && qlim > 0);

	sp = FUNC8(sfb_zone);
	if (sp == NULL) {
		FUNC5(LOG_ERR, "%s: SFB unable to allocate\n", FUNC4(ifp));
		return (NULL);
	}
	FUNC3(sp, sfb_size);

	if ((sp->sfb_bins = FUNC8(sfb_bins_zone)) == NULL) {
		FUNC5(LOG_ERR, "%s: SFB unable to allocate bins\n", FUNC4(ifp));
		FUNC6(sp);
		return (NULL);
	}
	FUNC3(sp->sfb_bins, sfb_bins_size);

	if ((sp->sfb_fc_lists = FUNC8(sfb_fcl_zone)) == NULL) {
		FUNC5(LOG_ERR, "%s: SFB unable to allocate flow control lists\n",
		    FUNC4(ifp));
		FUNC6(sp);
		return (NULL);
	}
	FUNC3(sp->sfb_fc_lists, sfb_fcl_size);

	for (i = 0; i < SFB_BINS; ++i)
		FUNC1(&FUNC0(sp, i)->fclist);

	sp->sfb_ifp = ifp;
	sp->sfb_qlim = qlim;
	sp->sfb_qid = qid;
	sp->sfb_flags = (flags & SFBF_USERFLAGS);
#if !PF_ECN
	if (sp->sfb_flags & SFBF_ECN) {
		sp->sfb_flags &= ~SFBF_ECN;
		FUNC5(LOG_ERR, "%s: SFB qid=%d, ECN not available; ignoring "
		    "SFBF_ECN flag!\n", FUNC4(ifp), sp->sfb_qid);
	}
#endif /* !PF_ECN */

	FUNC7(sp, CLASSQ_EV_INIT);

	return (sp);
}
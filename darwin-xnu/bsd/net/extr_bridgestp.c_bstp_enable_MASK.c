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
struct ifnet {int if_type; } ;
struct bstp_state {int /*<<< orphan*/  bs_bplist; } ;
struct bstp_port {int bp_active; int /*<<< orphan*/  bp_flags; struct ifnet* bp_ifp; struct bstp_state* bp_bs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bstp_state*) ; 
 int /*<<< orphan*/  BSTP_PORT_NEWINFO ; 
 int /*<<< orphan*/  FUNC1 (struct bstp_state*) ; 
 int EINVAL ; 
#define  IFT_ETHER 128 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct bstp_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bp_next ; 
 int /*<<< orphan*/  FUNC4 (struct bstp_state*) ; 
 int /*<<< orphan*/  FUNC5 (struct bstp_state*,struct bstp_port*) ; 

int
FUNC6(struct bstp_port *bp)
{
	struct bstp_state *bs = bp->bp_bs;
	struct ifnet *ifp = bp->bp_ifp;

	FUNC2(bp->bp_active == 0, ("already a bstp member"));

	switch (ifp->if_type) {
		case IFT_ETHER:	/* These can do spanning tree. */
			break;
		default:
			/* Nothing else can. */
			return (EINVAL);
	}

	FUNC0(bs);
	FUNC3(&bs->bs_bplist, bp, bp_next);
	bp->bp_active = 1;
	bp->bp_flags |= BSTP_PORT_NEWINFO;
	FUNC4(bs);
	FUNC5(bs, bp);
	FUNC1(bs);
	return (0);
}
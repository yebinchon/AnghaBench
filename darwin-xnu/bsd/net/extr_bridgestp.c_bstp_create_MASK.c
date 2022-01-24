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
struct ifnet {int dummy; } ;
struct bstp_state {int /*<<< orphan*/  bs_protover; } ;
struct bstp_port {int bp_flags; int /*<<< orphan*/  bp_path_cost; int /*<<< orphan*/  bp_infois; int /*<<< orphan*/  bp_rtagetask; int /*<<< orphan*/  bp_statetask; int /*<<< orphan*/  bp_priority; struct bstp_state* bp_bs; struct ifnet* bp_ifp; } ;

/* Variables and functions */
 int /*<<< orphan*/  BSTP_DEFAULT_PORT_PRIORITY ; 
 int /*<<< orphan*/  BSTP_IFSTATE_DISCARDING ; 
 int /*<<< orphan*/  BSTP_INFO_DISABLED ; 
 int /*<<< orphan*/  FUNC0 (struct bstp_state*) ; 
 int BSTP_PORT_AUTOEDGE ; 
 int BSTP_PORT_AUTOPTP ; 
 int /*<<< orphan*/  BSTP_ROLE_DISABLED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct bstp_port*) ; 
 int /*<<< orphan*/  BSTP_TCSTATE_INACTIVE ; 
 int /*<<< orphan*/  FUNC2 (struct bstp_state*) ; 
 int /*<<< orphan*/  FUNC3 (struct bstp_port*) ; 
 int /*<<< orphan*/  bstp_notify_rtage ; 
 int /*<<< orphan*/  bstp_notify_state ; 
 int /*<<< orphan*/  FUNC4 (struct bstp_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bstp_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct bstp_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct bstp_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct bstp_port*,int) ; 

int
FUNC9(struct bstp_state *bs, struct bstp_port *bp, struct ifnet *ifp)
{
	FUNC8(bp, sizeof(struct bstp_port));

	FUNC0(bs);
	bp->bp_ifp = ifp;
	bp->bp_bs = bs;
	bp->bp_priority = BSTP_DEFAULT_PORT_PRIORITY;
	FUNC1(&bp->bp_statetask, bstp_notify_state, bp);
	FUNC1(&bp->bp_rtagetask, bstp_notify_rtage, bp);

	/* Init state */
	bp->bp_infois = BSTP_INFO_DISABLED;
	bp->bp_flags = BSTP_PORT_AUTOEDGE|BSTP_PORT_AUTOPTP;
	FUNC6(bp, BSTP_IFSTATE_DISCARDING);
	FUNC4(bp, bs->bs_protover);
	FUNC5(bp, BSTP_ROLE_DISABLED);
	FUNC7(bp, BSTP_TCSTATE_INACTIVE);
	bp->bp_path_cost = FUNC3(bp);
	FUNC2(bs);
	return (0);
}
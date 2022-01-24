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
typedef  int uint32_t ;
struct bstp_state {int dummy; } ;
struct bstp_port {scalar_t__ bp_protover; int bp_path_cost; int /*<<< orphan*/  bp_flags; struct bstp_state* bp_bs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bstp_state*) ; 
 int BSTP_MAX_PATH_COST ; 
 int /*<<< orphan*/  BSTP_PORT_ADMCOST ; 
 scalar_t__ BSTP_PROTO_STP ; 
 int /*<<< orphan*/  FUNC1 (struct bstp_state*) ; 
 int EINVAL ; 
 int FUNC2 (struct bstp_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct bstp_state*) ; 

int
FUNC4(struct bstp_port *bp, uint32_t path_cost)
{
	struct bstp_state *bs = bp->bp_bs;

	if (path_cost > BSTP_MAX_PATH_COST)
		return (EINVAL);

	/* STP compat mode only uses 16 bits of the 32 */
	if (bp->bp_protover == BSTP_PROTO_STP && path_cost > 65535)
		path_cost = 65535;

	FUNC0(bs);

	if (path_cost == 0) {	/* use auto */
		bp->bp_flags &= ~BSTP_PORT_ADMCOST;
		bp->bp_path_cost = FUNC2(bp);
	} else {
		bp->bp_path_cost = path_cost;
		bp->bp_flags |= BSTP_PORT_ADMCOST;
	}
	FUNC3(bs);
	FUNC1(bs);
	return (0);
}
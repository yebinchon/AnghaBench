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
struct bstp_state {scalar_t__ bs_running; scalar_t__ bs_txholdcount; } ;
struct TYPE_2__ {scalar_t__ active; } ;
struct bstp_port {scalar_t__ bp_txcount; scalar_t__ bp_protover; int bp_role; int /*<<< orphan*/  bp_flags; int /*<<< orphan*/  bp_desg_htime; TYPE_1__ bp_hello_timer; scalar_t__ bp_tc_ack; } ;

/* Variables and functions */
 int /*<<< orphan*/  BSTP_PORT_NEWINFO ; 
 scalar_t__ BSTP_PROTO_RSTP ; 
#define  BSTP_ROLE_DESIGNATED 129 
#define  BSTP_ROLE_ROOT 128 
 int /*<<< orphan*/  FUNC0 (struct bstp_state*,struct bstp_port*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bstp_state*,struct bstp_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct bstp_state*,struct bstp_port*) ; 

__attribute__((used)) static void
FUNC4(struct bstp_state *bs, struct bstp_port *bp)
{
	if (bs->bs_running == 0)
		return;

	/*
	 * a PDU can only be sent if we have tx quota left and the
	 * hello timer is running.
	 */
	if (bp->bp_hello_timer.active == 0) {
		/* Test if it needs to be reset */
		FUNC0(bs, bp);
		return;
	}
	if (bp->bp_txcount > bs->bs_txholdcount)
		/* Ran out of karma */
		return;

	if (bp->bp_protover == BSTP_PROTO_RSTP) {
		FUNC2(bs, bp);
		bp->bp_tc_ack = 0;
	} else { /* STP */
		switch (bp->bp_role) {
			case BSTP_ROLE_DESIGNATED:
				FUNC2(bs, bp);
				bp->bp_tc_ack = 0;
				break;

			case BSTP_ROLE_ROOT:
				FUNC3(bs, bp);
				break;
		}
	}
	FUNC1(&bp->bp_hello_timer, bp->bp_desg_htime);
	bp->bp_flags &= ~BSTP_PORT_NEWINFO;
}
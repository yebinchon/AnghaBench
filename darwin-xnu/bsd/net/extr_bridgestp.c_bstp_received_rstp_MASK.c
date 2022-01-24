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
struct mbuf {scalar_t__ m_len; } ;
struct bstp_tbpdu {scalar_t__ tbu_bpdutype; } ;
struct bstp_state {int dummy; } ;
struct bstp_config_unit {int dummy; } ;
struct bstp_port {struct bstp_config_unit bp_msg_cu; } ;
struct bstp_cbpdu {int dummy; } ;

/* Variables and functions */
 scalar_t__ BSTP_BPDU_RSTP_LEN ; 
 scalar_t__ BSTP_MSGTYPE_RSTP ; 
 int /*<<< orphan*/  FUNC0 (struct bstp_port*,struct bstp_cbpdu*,struct bstp_config_unit*) ; 
 int /*<<< orphan*/  FUNC1 (struct bstp_state*,struct bstp_port*,struct bstp_config_unit*) ; 
 int /*<<< orphan*/  caddr_t ; 
 struct mbuf* FUNC2 (struct mbuf*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct bstp_cbpdu*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct mbuf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct bstp_state *bs, struct bstp_port *bp,
    struct mbuf **mp, struct bstp_tbpdu *tpdu)
{
	struct bstp_cbpdu cpdu;
	struct bstp_config_unit *cu = &bp->bp_msg_cu;

	if (tpdu->tbu_bpdutype != BSTP_MSGTYPE_RSTP)
		return;

	if ((*mp)->m_len < BSTP_BPDU_RSTP_LEN &&
	    (*mp = FUNC2(*mp, BSTP_BPDU_RSTP_LEN)) == NULL)
		return;
	FUNC3(&cpdu, FUNC4(*mp, caddr_t), BSTP_BPDU_RSTP_LEN);

	FUNC0(bp, &cpdu, cu);
	FUNC1(bs, bp, cu);
}
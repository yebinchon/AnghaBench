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
typedef  int u_char ;
struct tcpopt {int /*<<< orphan*/  to_flags; } ;
struct tcphdr {int dummy; } ;
struct tcpcb {int dummy; } ;
struct mptcb {int /*<<< orphan*/  mpt_mpte; } ;

/* Variables and functions */
#define  MPO_ADD_ADDR 135 
#define  MPO_CAPABLE 134 
#define  MPO_DSS 133 
#define  MPO_FAIL 132 
#define  MPO_FASTCLOSE 131 
#define  MPO_JOIN 130 
#define  MPO_PRIO 129 
#define  MPO_REMOVE_ADDR 128 
 int /*<<< orphan*/  TOF_MPTCP ; 
 int /*<<< orphan*/  FUNC0 (struct tcpcb*,int*,struct tcphdr*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct tcpcb*,int*,struct tcphdr*) ; 
 int /*<<< orphan*/  FUNC2 (struct tcpcb*,int*,struct tcphdr*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct tcpcb*,int*,struct tcphdr*) ; 
 int /*<<< orphan*/  FUNC4 (struct tcpcb*,int*,struct tcphdr*,int) ; 
 scalar_t__ FUNC5 (struct tcpcb*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct mptcb* FUNC7 (struct tcpcb*) ; 

void
FUNC8(struct tcpcb *tp, u_char *cp, struct tcphdr *th,
    struct tcpopt *to, int optlen)
{
	int mptcp_subtype;
	struct mptcb *mp_tp = FUNC7(tp);

	if (mp_tp == NULL)
		return;

	FUNC6(mp_tp->mpt_mpte);

	/* All MPTCP options have atleast 4 bytes */
	if (optlen < 4)
		return;

	mptcp_subtype = (cp[2] >> 4);

	if (FUNC5(tp, mptcp_subtype) == 0)
		return;

	switch (mptcp_subtype) {
		case MPO_CAPABLE:
			FUNC2(tp, cp, th, optlen);
			break;
		case MPO_JOIN:
			FUNC4(tp, cp, th, optlen);
			break;
		case MPO_DSS:
			FUNC0(tp, cp, th, optlen);
			break;
		case MPO_FASTCLOSE:
			FUNC1(tp, cp, th);
			break;
		case MPO_FAIL:
			FUNC3(tp, cp, th);
			break;
		case MPO_ADD_ADDR:	/* fall through */
		case MPO_REMOVE_ADDR:	/* fall through */
		case MPO_PRIO:
			to->to_flags |= TOF_MPTCP;
			break;
		default:
			break;
	}
	return;
}
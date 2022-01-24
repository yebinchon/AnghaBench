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
typedef  int /*<<< orphan*/  u_char ;
struct tcpcb {scalar_t__ t_rxtshift; } ;
struct socket {int dummy; } ;
struct mptcp_mpcapable_opt_common {int mmco_len; int /*<<< orphan*/  mmco_flags; int /*<<< orphan*/  mmco_version; int /*<<< orphan*/  mmco_subtype; int /*<<< orphan*/  mmco_kind; } ;
struct mptcb {int mpt_flags; struct mptcp_mpcapable_opt_common mpt_localkey; int /*<<< orphan*/  mpt_version; int /*<<< orphan*/  mpt_mpte; } ;
typedef  int /*<<< orphan*/  mptcp_key_t ;

/* Variables and functions */
 int /*<<< orphan*/  MPCAP_CHECKSUM_CBIT ; 
 int /*<<< orphan*/  MPCAP_PROPOSAL_SBIT ; 
 int /*<<< orphan*/  MPO_CAPABLE ; 
 int MPTCPF_CHECKSUM ; 
 int MPTCPF_FALLBACK_HEURISTIC ; 
 int MPTCPF_HEURISTIC_TRAC ; 
 int /*<<< orphan*/  TCPOPT_MULTIPATH ; 
 int /*<<< orphan*/  FUNC0 (struct mptcp_mpcapable_opt_common*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct mptcp_mpcapable_opt_common*,int) ; 
 scalar_t__ mptcp_mpcap_retries ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct tcpcb* FUNC3 (struct socket*) ; 
 int /*<<< orphan*/  FUNC4 (struct tcpcb*) ; 
 int /*<<< orphan*/  FUNC5 (struct tcpcb*) ; 
 struct mptcb* FUNC6 (struct tcpcb*) ; 

__attribute__((used)) static unsigned
FUNC7(struct socket *so, u_char *opt, unsigned optlen)
{
	struct mptcp_mpcapable_opt_common mptcp_opt;
	struct tcpcb *tp = FUNC3(so);
	struct mptcb *mp_tp = FUNC6(tp);

	FUNC2(mp_tp->mpt_mpte);

	/*
	 * Avoid retransmitting the MP_CAPABLE option.
	 */
	if (tp->t_rxtshift > mptcp_mpcap_retries) {
		if (!(mp_tp->mpt_flags & (MPTCPF_FALLBACK_HEURISTIC | MPTCPF_HEURISTIC_TRAC))) {
			mp_tp->mpt_flags |= MPTCPF_HEURISTIC_TRAC;
			FUNC5(tp);
		}
		return (optlen);
	}

	if (!FUNC4(tp)) {
		mp_tp->mpt_flags |= MPTCPF_FALLBACK_HEURISTIC;
		return (optlen);
	}

	FUNC0(&mptcp_opt, sizeof (struct mptcp_mpcapable_opt_common));

	mptcp_opt.mmco_kind = TCPOPT_MULTIPATH;
	mptcp_opt.mmco_len =
	    sizeof (struct mptcp_mpcapable_opt_common) +
	    sizeof (mptcp_key_t);
	mptcp_opt.mmco_subtype = MPO_CAPABLE;
	mptcp_opt.mmco_version = mp_tp->mpt_version;
	mptcp_opt.mmco_flags |= MPCAP_PROPOSAL_SBIT;
	if (mp_tp->mpt_flags & MPTCPF_CHECKSUM)
		mptcp_opt.mmco_flags |= MPCAP_CHECKSUM_CBIT;
	FUNC1(opt + optlen, &mptcp_opt, sizeof (struct mptcp_mpcapable_opt_common));
	optlen += sizeof (struct mptcp_mpcapable_opt_common);
	FUNC1(opt + optlen, &mp_tp->mpt_localkey, sizeof (mptcp_key_t));
	optlen += sizeof (mptcp_key_t);

	return (optlen);
}
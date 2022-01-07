
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct tcpcb {scalar_t__ t_rxtshift; } ;
struct socket {int dummy; } ;
struct mptcp_mpcapable_opt_common {int mmco_len; int mmco_flags; int mmco_version; int mmco_subtype; int mmco_kind; } ;
struct mptcb {int mpt_flags; struct mptcp_mpcapable_opt_common mpt_localkey; int mpt_version; int mpt_mpte; } ;
typedef int mptcp_key_t ;


 int MPCAP_CHECKSUM_CBIT ;
 int MPCAP_PROPOSAL_SBIT ;
 int MPO_CAPABLE ;
 int MPTCPF_CHECKSUM ;
 int MPTCPF_FALLBACK_HEURISTIC ;
 int MPTCPF_HEURISTIC_TRAC ;
 int TCPOPT_MULTIPATH ;
 int bzero (struct mptcp_mpcapable_opt_common*,int) ;
 int memcpy (int *,struct mptcp_mpcapable_opt_common*,int) ;
 scalar_t__ mptcp_mpcap_retries ;
 int mpte_lock_assert_held (int ) ;
 struct tcpcb* sototcpcb (struct socket*) ;
 int tcp_heuristic_do_mptcp (struct tcpcb*) ;
 int tcp_heuristic_mptcp_loss (struct tcpcb*) ;
 struct mptcb* tptomptp (struct tcpcb*) ;

__attribute__((used)) static unsigned
mptcp_setup_first_subflow_syn_opts(struct socket *so, u_char *opt, unsigned optlen)
{
 struct mptcp_mpcapable_opt_common mptcp_opt;
 struct tcpcb *tp = sototcpcb(so);
 struct mptcb *mp_tp = tptomptp(tp);

 mpte_lock_assert_held(mp_tp->mpt_mpte);




 if (tp->t_rxtshift > mptcp_mpcap_retries) {
  if (!(mp_tp->mpt_flags & (MPTCPF_FALLBACK_HEURISTIC | MPTCPF_HEURISTIC_TRAC))) {
   mp_tp->mpt_flags |= MPTCPF_HEURISTIC_TRAC;
   tcp_heuristic_mptcp_loss(tp);
  }
  return (optlen);
 }

 if (!tcp_heuristic_do_mptcp(tp)) {
  mp_tp->mpt_flags |= MPTCPF_FALLBACK_HEURISTIC;
  return (optlen);
 }

 bzero(&mptcp_opt, sizeof (struct mptcp_mpcapable_opt_common));

 mptcp_opt.mmco_kind = TCPOPT_MULTIPATH;
 mptcp_opt.mmco_len =
     sizeof (struct mptcp_mpcapable_opt_common) +
     sizeof (mptcp_key_t);
 mptcp_opt.mmco_subtype = MPO_CAPABLE;
 mptcp_opt.mmco_version = mp_tp->mpt_version;
 mptcp_opt.mmco_flags |= MPCAP_PROPOSAL_SBIT;
 if (mp_tp->mpt_flags & MPTCPF_CHECKSUM)
  mptcp_opt.mmco_flags |= MPCAP_CHECKSUM_CBIT;
 memcpy(opt + optlen, &mptcp_opt, sizeof (struct mptcp_mpcapable_opt_common));
 optlen += sizeof (struct mptcp_mpcapable_opt_common);
 memcpy(opt + optlen, &mp_tp->mpt_localkey, sizeof (mptcp_key_t));
 optlen += sizeof (mptcp_key_t);

 return (optlen);
}

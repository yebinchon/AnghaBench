
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct tcpopt {int to_flags; } ;
struct tcphdr {int dummy; } ;
struct tcpcb {int dummy; } ;
struct mptcb {int mpt_mpte; } ;
 int TOF_MPTCP ;
 int mptcp_do_dss_opt (struct tcpcb*,int*,struct tcphdr*,int) ;
 int mptcp_do_fastclose_opt (struct tcpcb*,int*,struct tcphdr*) ;
 int mptcp_do_mpcapable_opt (struct tcpcb*,int*,struct tcphdr*,int) ;
 int mptcp_do_mpfail_opt (struct tcpcb*,int*,struct tcphdr*) ;
 int mptcp_do_mpjoin_opt (struct tcpcb*,int*,struct tcphdr*,int) ;
 scalar_t__ mptcp_sanitize_option (struct tcpcb*,int) ;
 int mpte_lock_assert_held (int ) ;
 struct mptcb* tptomptp (struct tcpcb*) ;

void
tcp_do_mptcp_options(struct tcpcb *tp, u_char *cp, struct tcphdr *th,
    struct tcpopt *to, int optlen)
{
 int mptcp_subtype;
 struct mptcb *mp_tp = tptomptp(tp);

 if (mp_tp == ((void*)0))
  return;

 mpte_lock_assert_held(mp_tp->mpt_mpte);


 if (optlen < 4)
  return;

 mptcp_subtype = (cp[2] >> 4);

 if (mptcp_sanitize_option(tp, mptcp_subtype) == 0)
  return;

 switch (mptcp_subtype) {
  case 134:
   mptcp_do_mpcapable_opt(tp, cp, th, optlen);
   break;
  case 130:
   mptcp_do_mpjoin_opt(tp, cp, th, optlen);
   break;
  case 133:
   mptcp_do_dss_opt(tp, cp, th, optlen);
   break;
  case 131:
   mptcp_do_fastclose_opt(tp, cp, th);
   break;
  case 132:
   mptcp_do_mpfail_opt(tp, cp, th);
   break;
  case 135:
  case 128:
  case 129:
   to->to_flags |= TOF_MPTCP;
   break;
  default:
   break;
 }
 return;
}

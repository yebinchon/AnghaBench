
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int32_t ;
typedef int u_char ;
struct tcphdr {scalar_t__ th_seq; scalar_t__ th_flags; } ;
struct tcpcb {scalar_t__ rcv_nxt; TYPE_1__* t_inpcb; } ;
struct mptcp_mpfail_opt {int mfail_len; int mfail_dsn; } ;
struct mptcb {int mpt_ssn_at_csum_fail; int mpt_dsn_at_csum_fail; int mpt_flags; } ;
struct TYPE_4__ {int tcps_invalid_opt; } ;
struct TYPE_3__ {int inp_socket; } ;


 int MPTCPF_RECVD_MPFAIL ;
 scalar_t__ TH_ACK ;
 scalar_t__ TH_RST ;
 int mptcp_get_map_for_dsn (int ,int ,int *) ;
 int mptcp_hton64 (int ) ;
 int mptcp_notify_mpfail (int ) ;
 TYPE_2__ tcpstat ;
 struct mptcb* tptomptp (struct tcpcb*) ;

__attribute__((used)) static void
mptcp_do_mpfail_opt(struct tcpcb *tp, u_char *cp, struct tcphdr *th)
{
 struct mptcb *mp_tp = ((void*)0);
 struct mptcp_mpfail_opt *fail_opt = (struct mptcp_mpfail_opt *)cp;
 u_int32_t mdss_subflow_seqn = 0;
 int error = 0;





 if (th->th_seq != tp->rcv_nxt) {
  tcpstat.tcps_invalid_opt++;
  return;
 }


 if ((th->th_flags != TH_ACK) && (th->th_flags != TH_RST))
  return;

 if (fail_opt->mfail_len != sizeof (struct mptcp_mpfail_opt))
  return;

 mp_tp = tptomptp(tp);

 mp_tp->mpt_flags |= MPTCPF_RECVD_MPFAIL;
 mp_tp->mpt_dsn_at_csum_fail = mptcp_hton64(fail_opt->mfail_dsn);
 error = mptcp_get_map_for_dsn(tp->t_inpcb->inp_socket,
     mp_tp->mpt_dsn_at_csum_fail, &mdss_subflow_seqn);
 if (error == 0) {
  mp_tp->mpt_ssn_at_csum_fail = mdss_subflow_seqn;
 }

 mptcp_notify_mpfail(tp->t_inpcb->inp_socket);
}

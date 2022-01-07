
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int u_int64_t ;
struct tcpcb {int dummy; } ;
struct mptcp_dsn_opt {int mdss_data_len; int mdss_subflow_seqn; int mdss_dsn; } ;
struct mptcb {int mpt_rcvnxt; } ;


 int MPTCP_EXTEND_DSN (int ,int ,int ) ;
 int NTOHL (int ) ;
 int NTOHS (int ) ;
 int mptcp_update_rcv_state_meat (struct mptcb*,struct tcpcb*,int ,int ,int ,int ) ;
 struct mptcb* tptomptp (struct tcpcb*) ;

void
mptcp_update_dss_rcv_state(struct mptcp_dsn_opt *dss_info, struct tcpcb *tp,
    uint16_t csum)
{
 struct mptcb *mp_tp = tptomptp(tp);
 u_int64_t full_dsn = 0;

 NTOHL(dss_info->mdss_dsn);
 NTOHL(dss_info->mdss_subflow_seqn);
 NTOHS(dss_info->mdss_data_len);


 MPTCP_EXTEND_DSN(mp_tp->mpt_rcvnxt, dss_info->mdss_dsn, full_dsn);
 mptcp_update_rcv_state_meat(mp_tp, tp,
     full_dsn, dss_info->mdss_subflow_seqn, dss_info->mdss_data_len,
     csum);

}

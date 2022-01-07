
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcphdr {int dummy; } ;
struct tcpcb {TYPE_1__* t_inpcb; } ;
struct mbuf {int dummy; } ;
struct TYPE_2__ {int inp_socket; } ;


 int mptcp_insert_rmap (struct tcpcb*,struct mbuf*,struct tcphdr*) ;
 scalar_t__ mptcp_validate_dss_map (int ,struct tcpcb*,struct mbuf*,int) ;

int
mptcp_input_preproc(struct tcpcb *tp, struct mbuf *m, struct tcphdr *th,
      int drop_hdrlen)
{
 mptcp_insert_rmap(tp, m, th);
 if (mptcp_validate_dss_map(tp->t_inpcb->inp_socket, tp, m,
     drop_hdrlen) != 0)
  return -1;
 return 0;
}

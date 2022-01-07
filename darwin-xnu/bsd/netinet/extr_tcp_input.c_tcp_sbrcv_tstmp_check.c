
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct tcpcb {int t_flags; TYPE_1__* t_inpcb; } ;
struct sockbuf {int sb_flags; } ;
struct socket {struct sockbuf so_rcv; } ;
struct TYPE_2__ {struct socket* inp_socket; } ;


 int SB_AUTOSIZE ;
 int TF_RCVD_TSTMP ;
 int TF_REQ_TSTMP ;
 int tcp_recvspace ;
 int tcp_sbrcv_reserve (struct tcpcb*,struct sockbuf*,int,int ,int) ;

__attribute__((used)) static inline void
tcp_sbrcv_tstmp_check(struct tcpcb *tp)
{
 struct socket *so = tp->t_inpcb->inp_socket;
 u_int32_t newsize = 2 * tcp_recvspace;
 struct sockbuf *sbrcv = &so->so_rcv;

 if ((tp->t_flags & (TF_REQ_TSTMP | TF_RCVD_TSTMP)) !=
  (TF_REQ_TSTMP | TF_RCVD_TSTMP) &&
  (sbrcv->sb_flags & SB_AUTOSIZE) != 0) {
  tcp_sbrcv_reserve(tp, sbrcv, newsize, 0, newsize);
 }
}

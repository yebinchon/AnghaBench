
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpcb {struct mptsub* t_mpsub; struct inpcb* t_inpcb; } ;
struct socket {int so_flags; } ;
struct mptsub {int mpts_flags; } ;
struct inpcb {struct socket* inp_socket; } ;


 int MPTSF_WRITE_STALL ;
 int SOF_MP_SUBFLOW ;
 int SOF_MP_TRYFAILOVER ;

void
mptcp_reset_rexmit_state(struct tcpcb *tp)
{
 struct mptsub *mpts;
 struct inpcb *inp;
 struct socket *so;

 inp = tp->t_inpcb;
 if (inp == ((void*)0))
  return;

 so = inp->inp_socket;
 if (so == ((void*)0))
  return;

 if (!(so->so_flags & SOF_MP_SUBFLOW))
  return;

 mpts = tp->t_mpsub;

 mpts->mpts_flags &= ~MPTSF_WRITE_STALL;
 so->so_flags &= ~SOF_MP_TRYFAILOVER;
}

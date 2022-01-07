
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tcpcb {int t_state; } ;
struct TYPE_4__ {scalar_t__ sb_hiwat; scalar_t__ sb_preconn_hiwat; int sb_flags; } ;
struct TYPE_3__ {scalar_t__ sb_hiwat; int sb_flags; } ;
struct socket {int so_state; TYPE_2__ so_snd; TYPE_1__ so_rcv; } ;
struct proc {int dummy; } ;
struct inpcb {int in6p_hops; int inp_vflag; } ;


 int ENOBUFS ;
 int INP_IPV4 ;
 int INP_IPV6 ;
 int PF_INET6 ;
 int SB_AUTOSIZE ;
 int SB_USRSIZE ;
 scalar_t__ SOCK_CHECK_DOM (struct socket*,int ) ;
 int SS_NOFDREF ;
 int TCPS_CLOSED ;
 int in6_pcbdetach (struct inpcb*) ;
 int in_pcballoc (struct socket*,int *,struct proc*) ;
 int in_pcbdetach (struct inpcb*) ;
 scalar_t__ nstat_collect ;
 int nstat_tcp_new_pcb (struct inpcb*) ;
 int soreserve (struct socket*,int ,int ) ;
 int soreserve_preconnect (struct socket*,int) ;
 struct inpcb* sotoinpcb (struct socket*) ;
 int tcbinfo ;
 struct tcpcb* tcp_newtcpcb (struct inpcb*) ;
 int tcp_recvspace ;
 int tcp_sendspace ;

__attribute__((used)) static int
tcp_attach(struct socket *so, struct proc *p)
{
 struct tcpcb *tp;
 struct inpcb *inp;
 int error;




 error = in_pcballoc(so, &tcbinfo, p);
 if (error)
  return (error);

 inp = sotoinpcb(so);

 if (so->so_snd.sb_hiwat == 0 || so->so_rcv.sb_hiwat == 0) {
  error = soreserve(so, tcp_sendspace, tcp_recvspace);
  if (error)
   return (error);
 }

 if (so->so_snd.sb_preconn_hiwat == 0) {
  soreserve_preconnect(so, 2048);
 }

 if ((so->so_rcv.sb_flags & SB_USRSIZE) == 0)
  so->so_rcv.sb_flags |= SB_AUTOSIZE;
 if ((so->so_snd.sb_flags & SB_USRSIZE) == 0)
  so->so_snd.sb_flags |= SB_AUTOSIZE;
 inp->inp_vflag |= INP_IPV4;
 tp = tcp_newtcpcb(inp);
 if (tp == ((void*)0)) {
  int nofd = so->so_state & SS_NOFDREF;

  so->so_state &= ~SS_NOFDREF;





  in_pcbdetach(inp);
  so->so_state |= nofd;
  return (ENOBUFS);
 }
 if (nstat_collect)
  nstat_tcp_new_pcb(inp);
 tp->t_state = TCPS_CLOSED;
 return (0);
}

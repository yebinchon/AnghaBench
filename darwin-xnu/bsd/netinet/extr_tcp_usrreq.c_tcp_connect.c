
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
struct tcpcb {scalar_t__ t_state; int t_flags; int iss; int * t_timer; scalar_t__ t_starttime; struct inpcb* t_inpcb; } ;
struct socket {int dummy; } ;
struct TYPE_8__ {scalar_t__ s_addr; } ;
struct sockaddr_in {scalar_t__ sin_port; TYPE_4__ sin_addr; } ;
struct sockaddr {int dummy; } ;
struct proc {int dummy; } ;
struct TYPE_5__ {int ro_rt; } ;
struct in_addr {scalar_t__ s_addr; } ;
struct inpcb {scalar_t__ inp_lport; scalar_t__ inp_fport; scalar_t__ inp_flowhash; TYPE_1__ inp_route; TYPE_3__* inp_pcbinfo; TYPE_4__ inp_faddr; int inp_flags; struct ifnet* inp_last_outifp; struct in_addr inp_laddr; struct socket* inp_socket; } ;
struct ifnet {int dummy; } ;
struct TYPE_7__ {int ipi_lock; } ;
struct TYPE_6__ {int tcps_connattempt; } ;


 int EADDRINUSE ;
 int EINVAL ;
 int IFSCOPE_NONE ;
 scalar_t__ INADDR_ANY ;
 int INP_INADDR_ANY ;
 int OFFSET_FROM_START (struct tcpcb*,int ) ;
 scalar_t__ TCPS_SYN_SENT ;
 scalar_t__ TCPS_TIME_WAIT ;
 size_t TCPT_KEEP ;
 int TCP_CONN_KEEPINIT (struct tcpcb*) ;
 int TF_RCVD_CC ;
 scalar_t__ VM_KERNEL_ADDRPERM (struct inpcb*) ;
 int WNT_RELEASE ;
 scalar_t__ WNT_STOPUSING ;
 int ifnet_release (struct ifnet*) ;
 scalar_t__ in_pcb_checkstate (struct inpcb*,int ,int) ;
 int in_pcbbind (struct inpcb*,int *,struct proc*) ;
 int in_pcbladdr (struct inpcb*,struct sockaddr*,struct in_addr*,int ,struct ifnet**,int ) ;
 struct inpcb* in_pcblookup_hash (TYPE_3__*,TYPE_4__,scalar_t__,struct in_addr,scalar_t__,int ,int *) ;
 int in_pcbrehash (struct inpcb*) ;
 scalar_t__ inp_calc_flowhash (struct inpcb*) ;
 struct tcpcb* intotcpcb (struct inpcb*) ;
 int lck_rw_done (int ) ;
 int lck_rw_lock_exclusive (int ) ;
 int lck_rw_try_lock_exclusive (int ) ;
 scalar_t__ nstat_collect ;
 int nstat_route_connect_attempt (int ) ;
 int printf (char*,int ) ;
 int socket_lock (struct socket*,int) ;
 int socket_unlock (struct socket*,int) ;
 int soisconnecting (struct socket*) ;
 struct tcpcb* tcp_close (struct tcpcb*) ;
 int tcp_msl ;
 int tcp_new_isn (struct tcpcb*) ;
 scalar_t__ tcp_now ;
 int tcp_sendseqinit (struct tcpcb*) ;
 int tcp_set_max_rwinscale (struct tcpcb*,struct socket*,struct ifnet*) ;
 TYPE_2__ tcpstat ;

__attribute__((used)) static int
tcp_connect(struct tcpcb *tp, struct sockaddr *nam, struct proc *p)
{
 struct inpcb *inp = tp->t_inpcb, *oinp;
 struct socket *so = inp->inp_socket;
 struct tcpcb *otp;
 struct sockaddr_in *sin = (struct sockaddr_in *)(void *)nam;
 struct in_addr laddr;
 int error = 0;
 struct ifnet *outif = ((void*)0);

 if (inp->inp_lport == 0) {
  error = in_pcbbind(inp, ((void*)0), p);
  if (error)
   goto done;
 }






 error = in_pcbladdr(inp, nam, &laddr, IFSCOPE_NONE, &outif, 0);
 if (error)
  goto done;

 socket_unlock(inp->inp_socket, 0);
 oinp = in_pcblookup_hash(inp->inp_pcbinfo,
     sin->sin_addr, sin->sin_port,
     inp->inp_laddr.s_addr != INADDR_ANY ? inp->inp_laddr : laddr,
     inp->inp_lport, 0, ((void*)0));

 socket_lock(inp->inp_socket, 0);
 if (oinp) {
  if (oinp != inp)
   socket_lock(oinp->inp_socket, 1);
  if (in_pcb_checkstate(oinp, WNT_RELEASE, 1) == WNT_STOPUSING) {
   if (oinp != inp)
    socket_unlock(oinp->inp_socket, 1);
   goto skip_oinp;
  }

  if (oinp != inp && (otp = intotcpcb(oinp)) != ((void*)0) &&
      otp->t_state == TCPS_TIME_WAIT &&
      ((int)(tcp_now - otp->t_starttime)) < tcp_msl &&
      (otp->t_flags & TF_RCVD_CC)) {
   otp = tcp_close(otp);
  } else {
   printf("tcp_connect: inp=0x%llx err=EADDRINUSE\n",
       (uint64_t)VM_KERNEL_ADDRPERM(inp));
   if (oinp != inp)
    socket_unlock(oinp->inp_socket, 1);
   error = EADDRINUSE;
   goto done;
  }
  if (oinp != inp)
   socket_unlock(oinp->inp_socket, 1);
 }
skip_oinp:
 if ((inp->inp_laddr.s_addr == INADDR_ANY ? laddr.s_addr :
     inp->inp_laddr.s_addr) == sin->sin_addr.s_addr &&
     inp->inp_lport == sin->sin_port) {
  error = EINVAL;
  goto done;
 }
 if (!lck_rw_try_lock_exclusive(inp->inp_pcbinfo->ipi_lock)) {

  socket_unlock(inp->inp_socket, 0);
  lck_rw_lock_exclusive(inp->inp_pcbinfo->ipi_lock);
  socket_lock(inp->inp_socket, 0);
 }
 if (inp->inp_laddr.s_addr == INADDR_ANY) {
  inp->inp_laddr = laddr;

  inp->inp_last_outifp = outif;

  inp->inp_flags |= INP_INADDR_ANY;
 }
 inp->inp_faddr = sin->sin_addr;
 inp->inp_fport = sin->sin_port;
 in_pcbrehash(inp);
 lck_rw_done(inp->inp_pcbinfo->ipi_lock);

 if (inp->inp_flowhash == 0)
  inp->inp_flowhash = inp_calc_flowhash(inp);

 tcp_set_max_rwinscale(tp, so, outif);

 soisconnecting(so);
 tcpstat.tcps_connattempt++;
 tp->t_state = TCPS_SYN_SENT;
 tp->t_timer[TCPT_KEEP] = OFFSET_FROM_START(tp, TCP_CONN_KEEPINIT(tp));
 tp->iss = tcp_new_isn(tp);
 tcp_sendseqinit(tp);
 if (nstat_collect)
  nstat_route_connect_attempt(inp->inp_route.ro_rt);

done:
 if (outif != ((void*)0))
  ifnet_release(outif);

 return (error);
}

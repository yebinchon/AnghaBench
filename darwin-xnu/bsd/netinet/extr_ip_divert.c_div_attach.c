
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct socket {int so_usecount; struct socket* so_pcb; int so_state; } ;
struct proc {int dummy; } ;
struct inpcb {int inp_ip_p; struct socket inpcb_mtx; int inp_flags; int inp_vflag; } ;


 int INP_HDRINCL ;
 int INP_IPV4 ;
 int SS_ISCONNECTED ;
 scalar_t__ VM_KERNEL_ADDRPERM (struct socket*) ;
 int div_recvspace ;
 int div_sendspace ;
 int divcbinfo ;
 int in_pcballoc (struct socket*,int *,struct proc*) ;
 int panic (char*) ;
 int printf (char*,int ,int ,int ,int ) ;
 int proc_suser (struct proc*) ;
 int soreserve (struct socket*,int ,int ) ;
 struct inpcb* sotoinpcb (struct socket*) ;

__attribute__((used)) static int
div_attach(struct socket *so, int proto, struct proc *p)
{
 struct inpcb *inp;
 int error;


 inp = sotoinpcb(so);
 if (inp)
  panic("div_attach");
 if ((error = proc_suser(p)) != 0)
  return error;

 error = soreserve(so, div_sendspace, div_recvspace);
 if (error)
  return error;
 error = in_pcballoc(so, &divcbinfo, p);
 if (error)
  return error;
 inp = (struct inpcb *)so->so_pcb;
 inp->inp_ip_p = proto;
 inp->inp_vflag |= INP_IPV4;
 inp->inp_flags |= INP_HDRINCL;


 so->so_state |= SS_ISCONNECTED;
 return 0;
}

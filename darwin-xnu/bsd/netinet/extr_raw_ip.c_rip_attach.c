
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int so_state; scalar_t__ so_pcb; } ;
struct proc {int dummy; } ;
struct inpcb {int inp_ip_p; int inp_ip_ttl; int inp_vflag; } ;


 int EPERM ;
 int INP_IPV4 ;
 int SS_PRIV ;
 int in_pcballoc (struct socket*,int *,struct proc*) ;
 int ip_defttl ;
 int panic (char*) ;
 int rip_recvspace ;
 int rip_sendspace ;
 int ripcbinfo ;
 int soreserve (struct socket*,int ,int ) ;
 struct inpcb* sotoinpcb (struct socket*) ;

__attribute__((used)) static int
rip_attach(struct socket *so, int proto, struct proc *p)
{
 struct inpcb *inp;
 int error;

 inp = sotoinpcb(so);
 if (inp)
  panic("rip_attach");
 if ((so->so_state & SS_PRIV) == 0)
  return (EPERM);

 error = soreserve(so, rip_sendspace, rip_recvspace);
 if (error)
  return error;
 error = in_pcballoc(so, &ripcbinfo, p);
 if (error)
  return error;
 inp = (struct inpcb *)so->so_pcb;
 inp->inp_vflag |= INP_IPV4;
 inp->inp_ip_p = proto;
 inp->inp_ip_ttl = ip_defttl;
 return 0;
}

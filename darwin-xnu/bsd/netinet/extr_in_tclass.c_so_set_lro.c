
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpcb {int t_flagsext; } ;
struct socket {int so_flags; } ;
struct inpcb {int inp_fport; int inp_lport; int inp_faddr; int inp_laddr; } ;


 int SOF_USELRO ;
 int SO_TC_AV ;
 int TF_LRO_OFFLOADED ;
 struct tcpcb* intotcpcb (struct inpcb*) ;
 struct inpcb* sotoinpcb (struct socket*) ;
 int tcp_lro_remove_state (int ,int ,int ,int ) ;

void
so_set_lro(struct socket *so, int optval)
{
 if (optval == SO_TC_AV) {
  so->so_flags |= SOF_USELRO;
 } else {
  if (so->so_flags & SOF_USELRO) {

   so->so_flags &= ~SOF_USELRO;
   struct inpcb *inp = sotoinpcb(so);
   struct tcpcb *tp = ((void*)0);
   if (inp) {
    tp = intotcpcb(inp);
    if (tp && (tp->t_flagsext & TF_LRO_OFFLOADED)) {
     tcp_lro_remove_state(inp->inp_laddr,
      inp->inp_faddr,
      inp->inp_lport,
      inp->inp_fport);
     tp->t_flagsext &= ~TF_LRO_OFFLOADED;
    }
   }
  }
 }
}

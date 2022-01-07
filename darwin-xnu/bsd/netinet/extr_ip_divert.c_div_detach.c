
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct socket {int so_usecount; struct socket* so_pcb; } ;
struct inpcb {int inp_state; struct socket inpcb_mtx; } ;


 int INPCB_STATE_DEAD ;
 scalar_t__ VM_KERNEL_ADDRPERM (struct socket*) ;
 int in_pcbdetach (struct inpcb*) ;
 int panic (char*,struct socket*) ;
 int printf (char*,int ,int ,int ,int ) ;
 struct inpcb* sotoinpcb (struct socket*) ;

__attribute__((used)) static int
div_detach(struct socket *so)
{
 struct inpcb *inp;
 inp = sotoinpcb(so);
 if (inp == 0)
  panic("div_detach: so=%p null inp\n", so);
 in_pcbdetach(inp);
 inp->inp_state = INPCB_STATE_DEAD;
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {scalar_t__ so_pcb; } ;
struct inpcb {int in6p_faddr; int inp_faddr; } ;


 scalar_t__ PF_INET ;
 scalar_t__ PF_INET6 ;
 scalar_t__ SOCK_DOM (struct socket*) ;
 int in6addr_local (int *) ;
 int inaddr_local (int ) ;

int
so_isdstlocal(struct socket *so) {

 struct inpcb *inp = (struct inpcb *)so->so_pcb;

 if (SOCK_DOM(so) == PF_INET)
  return (inaddr_local(inp->inp_faddr));
 else if (SOCK_DOM(so) == PF_INET6)
  return (in6addr_local(&inp->in6p_faddr));

 return (0);
}

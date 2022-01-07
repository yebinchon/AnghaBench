
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct inpcb {int * in6p_icmp6filt; } ;


 int FREE (int *,int ) ;
 int M_PCB ;
 int in6_pcbdetach (struct inpcb*) ;
 int panic (char*) ;
 struct inpcb* sotoinpcb (struct socket*) ;

__attribute__((used)) static int
rip6_detach(struct socket *so)
{
 struct inpcb *inp;

 inp = sotoinpcb(so);
 if (inp == 0)
  panic("rip6_detach");

 if (inp->in6p_icmp6filt) {
  FREE(inp->in6p_icmp6filt, M_PCB);
  inp->in6p_icmp6filt = ((void*)0);
 }
 in6_pcbdetach(inp);
 return 0;
}

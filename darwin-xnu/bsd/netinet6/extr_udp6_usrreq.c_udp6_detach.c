
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct inpcb {int dummy; } ;


 int EINVAL ;
 int in6_pcbdetach (struct inpcb*) ;
 struct inpcb* sotoinpcb (struct socket*) ;

__attribute__((used)) static int
udp6_detach(struct socket *so)
{
 struct inpcb *inp;

 inp = sotoinpcb(so);
 if (inp == ((void*)0))
  return (EINVAL);
 in6_pcbdetach(inp);
 return (0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct sockaddr_in6 {int dummy; } ;
struct in6_addr {int dummy; } ;
struct inpcb {struct in6_addr in6p_laddr; int inp_lport; } ;
typedef int in_port_t ;


 int EINVAL ;
 int VERIFY (int ) ;
 int bzero (struct sockaddr_in6*,int) ;
 int in6_sockaddr_s (int ,struct in6_addr*,struct sockaddr_in6*) ;
 struct inpcb* sotoinpcb (struct socket*) ;

int
in6_getsockaddr_s(struct socket *so, struct sockaddr_in6 *ss)
{
 struct inpcb *inp;
 struct in6_addr addr;
 in_port_t port;

 VERIFY(ss != ((void*)0));
 bzero(ss, sizeof (*ss));

 if ((inp = sotoinpcb(so)) == ((void*)0))
  return (EINVAL);

 port = inp->inp_lport;
 addr = inp->in6p_laddr;

 in6_sockaddr_s(port, &addr, ss);
 return (0);
}

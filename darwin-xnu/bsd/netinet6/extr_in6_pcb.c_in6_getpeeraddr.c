
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct sockaddr {int dummy; } ;
struct in6_addr {int dummy; } ;
struct inpcb {struct in6_addr in6p_faddr; int inp_fport; } ;
typedef int in_port_t ;


 int EINVAL ;
 int ENOBUFS ;
 struct sockaddr* in6_sockaddr (int ,struct in6_addr*) ;
 struct inpcb* sotoinpcb (struct socket*) ;

int
in6_getpeeraddr(struct socket *so, struct sockaddr **nam)
{
 struct inpcb *inp;
 struct in6_addr addr;
 in_port_t port;

 if ((inp = sotoinpcb(so)) == ((void*)0))
  return (EINVAL);

 port = inp->inp_fport;
 addr = inp->in6p_faddr;

 *nam = in6_sockaddr(port, &addr);
 if (*nam == ((void*)0))
  return (ENOBUFS);
 return (0);
}

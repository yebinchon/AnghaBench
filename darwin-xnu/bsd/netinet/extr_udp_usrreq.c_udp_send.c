
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct sockaddr {int dummy; } ;
struct proc {int dummy; } ;
struct mbuf {int dummy; } ;
struct inpcb {int dummy; } ;


 int EINVAL ;
 int flow_divert_implicit_data_out (struct socket*,int,struct mbuf*,struct sockaddr*,struct mbuf*,struct proc*) ;
 int m_freem (struct mbuf*) ;
 scalar_t__ necp_socket_should_use_flow_divert (struct inpcb*) ;
 struct inpcb* sotoinpcb (struct socket*) ;
 int udp_output (struct inpcb*,struct mbuf*,struct sockaddr*,struct mbuf*,struct proc*) ;

int
udp_send(struct socket *so, int flags, struct mbuf *m,
    struct sockaddr *addr, struct mbuf *control, struct proc *p)
{

#pragma unused(flags)

 struct inpcb *inp;

 inp = sotoinpcb(so);
 if (inp == ((void*)0)) {
  if (m != ((void*)0))
   m_freem(m);
  if (control != ((void*)0))
   m_freem(control);
  return (EINVAL);
 }
 return (udp_output(inp, m, addr, control, p));
}

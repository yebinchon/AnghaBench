
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct inpcb {int dummy; } ;


 int PF_INET6 ;
 scalar_t__ SOCK_CHECK_DOM (struct socket*,int ) ;
 scalar_t__ SOCK_DGRAM ;
 scalar_t__ SOCK_TYPE (struct socket*) ;
 int in6_pcbdetach (struct inpcb*) ;
 int in_pcbdetach (struct inpcb*) ;
 int soisdisconnected (struct socket*) ;
 struct inpcb* sotoinpcb (struct socket*) ;

__attribute__((used)) static void
flow_divert_disconnect_socket(struct socket *so)
{
 soisdisconnected(so);
 if (SOCK_TYPE(so) == SOCK_DGRAM) {
  struct inpcb *inp = ((void*)0);

  inp = sotoinpcb(so);
  if (inp != ((void*)0)) {





    in_pcbdetach(inp);
  }
 }
}

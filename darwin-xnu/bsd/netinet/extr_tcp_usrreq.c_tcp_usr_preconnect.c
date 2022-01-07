
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct inpcb {int dummy; } ;


 int COMMON_END (int ) ;
 int PRU_PRECONNECT ;
 scalar_t__ necp_socket_should_use_flow_divert (struct inpcb*) ;
 int soclearfastopen (struct socket*) ;
 struct inpcb* sotoinpcb (struct socket*) ;
 int sototcpcb (struct socket*) ;
 int tcp_output (int ) ;

__attribute__((used)) static int
tcp_usr_preconnect(struct socket *so)
{
 struct inpcb *inp = sotoinpcb(so);
 int error = 0;
 error = tcp_output(sototcpcb(so));

 soclearfastopen(so);

 COMMON_END(PRU_PRECONNECT);
}

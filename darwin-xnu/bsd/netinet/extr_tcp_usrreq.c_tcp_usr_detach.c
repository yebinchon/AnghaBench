
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpcb {int dummy; } ;
struct socket {int dummy; } ;
struct inpcb {scalar_t__ inp_state; } ;


 int EINVAL ;
 scalar_t__ INPCB_STATE_DEAD ;
 int PRU_DETACH ;
 int TCPDEBUG0 ;
 int TCPDEBUG1 () ;
 int TCPDEBUG2 (int ) ;
 int calculate_tcp_clock () ;
 struct tcpcb* intotcpcb (struct inpcb*) ;
 int socket_lock_assert_owned (struct socket*) ;
 struct inpcb* sotoinpcb (struct socket*) ;
 struct tcpcb* tcp_disconnect (struct tcpcb*) ;

__attribute__((used)) static int
tcp_usr_detach(struct socket *so)
{
 int error = 0;
 struct inpcb *inp = sotoinpcb(so);
 struct tcpcb *tp;
 TCPDEBUG0;

 if (inp == 0 || (inp->inp_state == INPCB_STATE_DEAD)) {
  return EINVAL;
 }
 socket_lock_assert_owned(so);
 tp = intotcpcb(inp);

        if (tp == ((void*)0))
  goto out;
 TCPDEBUG1();

 calculate_tcp_clock();

 tp = tcp_disconnect(tp);
out:
 TCPDEBUG2(PRU_DETACH);
 return error;
}

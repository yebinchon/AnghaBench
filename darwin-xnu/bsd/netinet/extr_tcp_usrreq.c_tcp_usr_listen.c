
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpcb {int t_state; } ;
struct socket {int dummy; } ;
struct proc {int dummy; } ;
struct inpcb {scalar_t__ inp_lport; } ;


 int COMMON_END (int ) ;
 int COMMON_START () ;
 int PRU_LISTEN ;
 int TCPS_LISTEN ;
 int in_pcbbind (struct inpcb*,int *,struct proc*) ;
 struct inpcb* sotoinpcb (struct socket*) ;

__attribute__((used)) static int
tcp_usr_listen(struct socket *so, struct proc *p)
{
 int error = 0;
 struct inpcb *inp = sotoinpcb(so);
 struct tcpcb *tp;

 COMMON_START();
 if (inp->inp_lport == 0)
  error = in_pcbbind(inp, ((void*)0), p);
 if (error == 0)
  tp->t_state = TCPS_LISTEN;
 COMMON_END(PRU_LISTEN);
}

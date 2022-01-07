
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpcb {int dummy; } ;
struct inpcb {int inp_flags2; } ;


 int INP2_TIMEWAIT ;
 int TAILQ_REMOVE (int *,struct tcpcb*,int ) ;
 struct tcpcb* intotcpcb (struct inpcb*) ;
 int t_twentry ;
 int tcp_tw_tailq ;

void
tcp_remove_from_time_wait(struct inpcb *inp)
{
 struct tcpcb *tp = intotcpcb(inp);
 if (inp->inp_flags2 & INP2_TIMEWAIT)
  TAILQ_REMOVE(&tcp_tw_tailq, tp, t_twentry);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpcb {scalar_t__ t_state; int t_maxseg; int snd_cwnd; scalar_t__ snd_una; scalar_t__ snd_max; int * t_ccstate; } ;


 int IN_FASTRECOVERY (struct tcpcb*) ;
 scalar_t__ TCPS_ESTABLISHED ;
 int VERIFY (int ) ;
 int tcp_cubic_clear_state (struct tcpcb*) ;
 int tcp_cubic_pre_fr (struct tcpcb*) ;

__attribute__((used)) static void
tcp_cubic_after_timeout(struct tcpcb *tp)
{
 VERIFY(tp->t_ccstate != ((void*)0));






 if (tp->t_state < TCPS_ESTABLISHED &&
     ((int)(tp->snd_max - tp->snd_una) <= 1))
  return;

 if (!IN_FASTRECOVERY(tp)) {
  tcp_cubic_clear_state(tp);
  tcp_cubic_pre_fr(tp);
 }





 tp->snd_cwnd = tp->t_maxseg;
}

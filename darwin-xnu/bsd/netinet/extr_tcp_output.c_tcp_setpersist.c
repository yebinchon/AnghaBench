
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpcb {int t_srtt; int t_rttvar; scalar_t__ t_persist_timeout; scalar_t__* t_timer; scalar_t__ t_persist_stop; size_t t_rxtshift; } ;


 scalar_t__ OFFSET_FROM_START (struct tcpcb*,scalar_t__) ;
 int TCPTV_PERSMAX ;
 size_t TCPT_PERSIST ;
 int TCPT_RANGESET (scalar_t__,int,int ,int ,int ) ;
 size_t TCP_MAXRXTSHIFT ;
 int* tcp_backoff ;
 scalar_t__ tcp_now ;
 int tcptv_persmin_val ;

void
tcp_setpersist(struct tcpcb *tp)
{
 int t = ((tp->t_srtt >> 2) + tp->t_rttvar) >> 1;







 if ((tp->t_persist_timeout != 0) &&
            (tp->t_timer[TCPT_PERSIST] == 0) &&
            (tp->t_persist_stop == 0)) {
  tp->t_persist_stop = tcp_now + tp->t_persist_timeout;
 }




 TCPT_RANGESET(tp->t_timer[TCPT_PERSIST],
     t * tcp_backoff[tp->t_rxtshift],
     tcptv_persmin_val, TCPTV_PERSMAX, 0);
 tp->t_timer[TCPT_PERSIST] = OFFSET_FROM_START(tp, tp->t_timer[TCPT_PERSIST]);

 if (tp->t_rxtshift < TCP_MAXRXTSHIFT)
  tp->t_rxtshift++;
}

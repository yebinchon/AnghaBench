
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int16_t ;
struct tcptimerlist {scalar_t__ probe_if_index; int mtx; scalar_t__ idleruns; int mode; int runtime; scalar_t__ scheduled; scalar_t__ running; } ;
typedef scalar_t__ int32_t ;
struct TYPE_2__ {int tcps_probe_if_conflict; } ;


 int TCP_TIMERLIST_10MS_MODE ;
 scalar_t__ TCP_TIMER_10MS_QUANTUM ;
 int calculate_tcp_clock () ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 int tcp_now ;
 int tcp_sched_timerlist (scalar_t__) ;
 struct tcptimerlist tcp_timer_list ;
 TYPE_1__ tcpstat ;
 scalar_t__ timer_diff (int ,int ,int ,scalar_t__) ;

void
tcp_interface_send_probe(u_int16_t probe_if_index)
{
 int32_t offset = 0;
 struct tcptimerlist *listp = &tcp_timer_list;


 calculate_tcp_clock();

 lck_mtx_lock(listp->mtx);
 if (listp->probe_if_index > 0) {
  tcpstat.tcps_probe_if_conflict++;
  goto done;
 }

 listp->probe_if_index = probe_if_index;
 if (listp->running)
  goto done;





 offset = TCP_TIMER_10MS_QUANTUM;
 if (listp->scheduled) {
  int32_t diff;
  diff = timer_diff(listp->runtime, 0, tcp_now, offset);
  if (diff <= 0) {

   goto done;
  }
 }
 listp->mode = TCP_TIMERLIST_10MS_MODE;
 listp->idleruns = 0;

 tcp_sched_timerlist(offset);

done:
 lck_mtx_unlock(listp->mtx);
 return;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int u_int16_t ;
struct tcptimerlist {int runtime; int scheduled; scalar_t__ running; } ;
typedef scalar_t__ int32_t ;
typedef int boolean_t ;


 int FALSE ;
 int TCP_TIMERLIST_100MS_MODE ;
 int TCP_TIMERLIST_10MS_MODE ;
 scalar_t__ TCP_TIMER_100MS_QUANTUM ;
 scalar_t__ TCP_TIMER_10MS_QUANTUM ;
 scalar_t__ TCP_TIMER_500MS_QUANTUM ;
 int TRUE ;
 struct tcptimerlist tcp_timer_list ;
 scalar_t__ timer_diff (int ,int ,int ,int ) ;

__attribute__((used)) static boolean_t
need_to_resched_timerlist(u_int32_t runtime, u_int16_t mode)
{
 struct tcptimerlist *listp = &tcp_timer_list;
 int32_t diff;






 if (listp->running)
  return (TRUE);

 if (!listp->scheduled)
  return (TRUE);

 diff = timer_diff(listp->runtime, 0, runtime, 0);
 if (diff <= 0) {

  return (FALSE);
 } else {
  if (mode & TCP_TIMERLIST_10MS_MODE) {
   if (diff <= TCP_TIMER_10MS_QUANTUM)
    return (FALSE);
  } else if (mode & TCP_TIMERLIST_100MS_MODE) {
   if (diff <= TCP_TIMER_100MS_QUANTUM)
    return (FALSE);
  } else {
   if (diff <= TCP_TIMER_500MS_QUANTUM)
    return (FALSE);
  }
 }
 return (TRUE);
}

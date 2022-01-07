
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct tcpcb {scalar_t__ t_challengeack_count; int t_challengeack_last; } ;
typedef int int32_t ;
typedef scalar_t__ boolean_t ;


 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 scalar_t__ tcp_challengeack_limit ;
 int tcp_now ;
 int timer_diff (int ,int ,int ,int ) ;

__attribute__((used)) static boolean_t
tcp_is_ack_ratelimited(struct tcpcb *tp)
{
 boolean_t ret = TRUE;
 uint32_t now = tcp_now;
 int32_t diff = 0;

 diff = timer_diff(now, 0, tp->t_challengeack_last, 0);




 if (tp->t_challengeack_last == 0 || diff >= 1000) {
  tp->t_challengeack_last = now;
  tp->t_challengeack_count = 0;
  ret = FALSE;
 } else if (tp->t_challengeack_count < tcp_challengeack_limit) {
  ret = FALSE;
 }


 if (ret == FALSE && (tp->t_challengeack_count + 1 > 0))
  tp->t_challengeack_count++;

 return (ret);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef size_t uint16_t ;
struct TYPE_2__ {size_t index; size_t mode; scalar_t__ runtime; scalar_t__ timer_start; } ;
struct tcpcb {scalar_t__* t_timer; TYPE_1__ tentry; } ;


 size_t TCPT_NONE ;
 size_t TCPT_NTIMERS ;
 int TCP_SET_TIMER_MODE (size_t,size_t) ;
 int VERIFY (int) ;

__attribute__((used)) static inline void
tcp_set_lotimer_index(struct tcpcb *tp)
{
 uint16_t i, lo_index = TCPT_NONE, mode = 0;
 uint32_t lo_timer = 0;
 for (i = 0; i < TCPT_NTIMERS; ++i) {
  if (tp->t_timer[i] != 0) {
   TCP_SET_TIMER_MODE(mode, i);
   if (lo_timer == 0 || tp->t_timer[i] < lo_timer) {
    lo_timer = tp->t_timer[i];
    lo_index = i;
   }
  }
 }
 tp->tentry.index = lo_index;
 tp->tentry.mode = mode;
 VERIFY(tp->tentry.index == TCPT_NONE || tp->tentry.mode > 0);

 if (tp->tentry.index != TCPT_NONE) {
  tp->tentry.runtime = tp->tentry.timer_start
      + tp->t_timer[tp->tentry.index];
  if (tp->tentry.runtime == 0)
   tp->tentry.runtime++;
 }
}

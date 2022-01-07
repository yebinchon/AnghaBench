
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct tcpcb {scalar_t__* t_timer; struct inpcb* t_inpcb; } ;
struct inpcbinfo {int ipi_twcount; int ipi_lock; } ;
struct inpcb {int inp_flags2; } ;


 int INP2_TIMEWAIT ;
 int LCK_RW_ASSERT (int ,int ) ;
 int LCK_RW_ASSERT_EXCLUSIVE ;
 int LIST_REMOVE (struct inpcb*,int ) ;
 int TAILQ_INSERT_TAIL (int *,struct tcpcb*,int ) ;
 int TAILQ_REMOVE (int *,struct tcpcb*,int ) ;
 size_t TCPT_2MSL ;
 scalar_t__ TIMER_IS_ON_LIST (struct tcpcb*) ;
 int inp_list ;
 int t_twentry ;
 struct inpcbinfo tcbinfo ;
 scalar_t__ tcp_now ;
 int tcp_remove_timer (struct tcpcb*) ;
 int tcp_tw_tailq ;

__attribute__((used)) static void
add_to_time_wait_locked(struct tcpcb *tp, uint32_t delay)
{
 struct inpcbinfo *pcbinfo = &tcbinfo;
 struct inpcb *inp = tp->t_inpcb;
 uint32_t timer;


 LCK_RW_ASSERT(pcbinfo->ipi_lock, LCK_RW_ASSERT_EXCLUSIVE);


 if (!(inp->inp_flags2 & INP2_TIMEWAIT)) {
  pcbinfo->ipi_twcount++;
  inp->inp_flags2 |= INP2_TIMEWAIT;


  LIST_REMOVE(inp, inp_list);
 } else {
  TAILQ_REMOVE(&tcp_tw_tailq, tp, t_twentry);
 }


 timer = tcp_now + delay;



 if (TIMER_IS_ON_LIST(tp))
  tcp_remove_timer(tp);
 tp->t_timer[TCPT_2MSL] = timer;

 TAILQ_INSERT_TAIL(&tcp_tw_tailq, tp, t_twentry);
}

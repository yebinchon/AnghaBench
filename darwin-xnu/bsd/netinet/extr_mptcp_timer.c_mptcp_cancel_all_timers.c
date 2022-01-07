
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mptcb {int dummy; } ;


 int MPTT_FASTCLOSE ;
 int MPTT_REXMT ;
 int MPTT_TW ;
 int mptcp_cancel_timer (struct mptcb*,int ) ;

void
mptcp_cancel_all_timers(struct mptcb *mp_tp)
{
 mptcp_cancel_timer(mp_tp, MPTT_REXMT);
 mptcp_cancel_timer(mp_tp, MPTT_TW);
 mptcp_cancel_timer(mp_tp, MPTT_FASTCLOSE);
}

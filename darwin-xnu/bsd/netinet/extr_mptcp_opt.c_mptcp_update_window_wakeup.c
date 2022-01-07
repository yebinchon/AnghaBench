
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcpcb {TYPE_1__* t_inpcb; int snd_wnd; } ;
struct mptcb {int mpt_flags; int mpt_snduna; int mpt_sndwl2; int mpt_rcvnxt; int mpt_sndwl1; int mpt_sndwnd; int mpt_mpte; } ;
struct TYPE_2__ {int inp_socket; } ;


 int MPTCPF_FALLBACK_TO_TCP ;
 int mpte_lock_assert_held (int ) ;
 int sowwakeup (int ) ;
 struct mptcb* tptomptp (struct tcpcb*) ;

void
mptcp_update_window_wakeup(struct tcpcb *tp)
{
 struct mptcb *mp_tp = tptomptp(tp);

 mpte_lock_assert_held(mp_tp->mpt_mpte);

 if (mp_tp->mpt_flags & MPTCPF_FALLBACK_TO_TCP) {
  mp_tp->mpt_sndwnd = tp->snd_wnd;
  mp_tp->mpt_sndwl1 = mp_tp->mpt_rcvnxt;
  mp_tp->mpt_sndwl2 = mp_tp->mpt_snduna;
 }

 sowwakeup(tp->t_inpcb->inp_socket);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {int so_flags1; } ;
struct mptcb {scalar_t__ mpt_sndnxt; scalar_t__ mpt_sndmax; scalar_t__ mpt_state; scalar_t__ mpt_sndwnd; scalar_t__ mpt_snduna; TYPE_1__* mpt_mpte; } ;
typedef int boolean_t ;
struct TYPE_2__ {scalar_t__ mpte_reinjectq; } ;


 int FALSE ;
 scalar_t__ MPTCPS_CLOSE_WAIT ;
 scalar_t__ MPTCPS_FIN_WAIT_2 ;
 scalar_t__ MPTCP_SEQ_GEQ (scalar_t__,scalar_t__) ;
 scalar_t__ MPTCP_SEQ_LEQ (scalar_t__,scalar_t__) ;
 int SOF1_PRECONNECT_DATA ;
 int TRUE ;
 struct socket* mptetoso (TYPE_1__*) ;

boolean_t
mptcp_can_send_more(struct mptcb *mp_tp, boolean_t ignore_reinject)
{
 struct socket *mp_so = mptetoso(mp_tp->mpt_mpte);




 if (!ignore_reinject && mp_tp->mpt_mpte->mpte_reinjectq)
  return (TRUE);
 if (!(mp_so->so_flags1 & SOF1_PRECONNECT_DATA) && MPTCP_SEQ_GEQ(mp_tp->mpt_sndnxt, mp_tp->mpt_sndmax))
  return (FALSE);

 if (MPTCP_SEQ_LEQ(mp_tp->mpt_snduna + mp_tp->mpt_sndwnd, mp_tp->mpt_sndnxt))
  return (FALSE);

 if (mp_tp->mpt_sndnxt + 1 == mp_tp->mpt_sndmax && mp_tp->mpt_state > MPTCPS_CLOSE_WAIT)
  return (FALSE);

 if (mp_tp->mpt_state >= MPTCPS_FIN_WAIT_2)
  return (FALSE);

 return (TRUE);
}

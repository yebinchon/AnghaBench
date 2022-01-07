
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mptcb {scalar_t__ mpt_state; int mpt_mpte; } ;
typedef int boolean_t ;


 scalar_t__ MPTCPS_CLOSE_WAIT ;
 int mpte_lock_assert_held (int ) ;

boolean_t
mptcp_ok_to_keepalive(struct mptcb *mp_tp)
{
 boolean_t ret = 1;
 mpte_lock_assert_held(mp_tp->mpt_mpte);

 if (mp_tp->mpt_state >= MPTCPS_CLOSE_WAIT) {
  ret = 0;
 }
 return (ret);
}

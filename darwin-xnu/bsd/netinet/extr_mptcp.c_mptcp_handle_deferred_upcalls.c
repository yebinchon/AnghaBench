
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mppcb {int mpp_flags; int mpp_pcbe; int mpp_socket; } ;


 int MPP_SET_CELLICON ;
 int MPP_SHOULD_RWAKEUP ;
 int MPP_SHOULD_WORKLOOP ;
 int MPP_SHOULD_WWAKEUP ;
 int MPP_UNSET_CELLICON ;
 int VERIFY (int) ;
 int mptcp_set_cellicon (int ) ;
 scalar_t__ mptcp_should_defer_upcall (struct mppcb*) ;
 int mptcp_subflow_workloop (int ) ;
 int mptcp_unset_cellicon () ;
 int sorwakeup (int ) ;
 int sowwakeup (int ) ;

void
mptcp_handle_deferred_upcalls(struct mppcb *mpp, uint32_t flag)
{
 VERIFY(mpp->mpp_flags & flag);
 mpp->mpp_flags &= ~flag;

 if (mptcp_should_defer_upcall(mpp))
  return;

 if (mpp->mpp_flags & MPP_SHOULD_WORKLOOP) {
  mpp->mpp_flags &= ~MPP_SHOULD_WORKLOOP;

  mptcp_subflow_workloop(mpp->mpp_pcbe);
 }

 if (mpp->mpp_flags & MPP_SHOULD_RWAKEUP) {
  mpp->mpp_flags &= ~MPP_SHOULD_RWAKEUP;

  sorwakeup(mpp->mpp_socket);
 }

 if (mpp->mpp_flags & MPP_SHOULD_WWAKEUP) {
  mpp->mpp_flags &= ~MPP_SHOULD_WWAKEUP;

  sowwakeup(mpp->mpp_socket);
 }

 if (mpp->mpp_flags & MPP_SET_CELLICON) {
  mpp->mpp_flags &= ~MPP_SET_CELLICON;

  mptcp_set_cellicon(mpp->mpp_pcbe);
 }

 if (mpp->mpp_flags & MPP_UNSET_CELLICON) {
  mpp->mpp_flags &= ~MPP_UNSET_CELLICON;

  mptcp_unset_cellicon();
 }
}

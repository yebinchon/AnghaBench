
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mptcb {int mpt_gc_ticks; int mpt_rcvwnd; int mpt_flags; int mpt_version; } ;


 int MPTCPF_CHECKSUM ;
 int MPTCP_STD_VERSION_0 ;
 int MPT_GC_TICKS ;
 scalar_t__ mptcp_dss_csum ;
 int mptcp_sbspace (struct mptcb*) ;

__attribute__((used)) static void
mptcp_conn_properties(struct mptcb *mp_tp)
{

 mp_tp->mpt_version = MPTCP_STD_VERSION_0;


 if (mptcp_dss_csum)
  mp_tp->mpt_flags |= MPTCPF_CHECKSUM;


 mp_tp->mpt_rcvwnd = mptcp_sbspace(mp_tp);


 mp_tp->mpt_gc_ticks = MPT_GC_TICKS;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int64_t ;
typedef int u_int32_t ;
struct tcpcb {int dummy; } ;
struct mptcb {int mpt_sndmax; int mpt_mpte; } ;


 int MPTCP_DATASEQ_LOW32_MASK ;
 int mpte_lock_assert_held (int ) ;
 struct mptcb* tptomptp (struct tcpcb*) ;

__attribute__((used)) static int
mptcp_ok_to_fin(struct tcpcb *tp, u_int64_t dsn, u_int32_t datalen)
{
 struct mptcb *mp_tp = tptomptp(tp);

 mpte_lock_assert_held(mp_tp->mpt_mpte);

 dsn = (mp_tp->mpt_sndmax & MPTCP_DATASEQ_LOW32_MASK) | dsn;
 if ((dsn + datalen) == mp_tp->mpt_sndmax)
  return (1);

 return (0);
}

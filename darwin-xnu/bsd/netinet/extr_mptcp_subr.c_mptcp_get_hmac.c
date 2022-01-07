
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int u_char ;
struct mptcb {int mpt_remotekey; int mpt_localkey; int mpt_mpte; } ;
typedef int mptcp_addr_id ;


 int mptcp_get_rands (int ,struct mptcb*,scalar_t__*,scalar_t__*) ;
 int mptcp_hmac_sha1 (int ,int ,scalar_t__,scalar_t__,int *) ;
 int mpte_lock_assert_held (int ) ;

void
mptcp_get_hmac(mptcp_addr_id aid, struct mptcb *mp_tp, u_char *digest)
{
 uint32_t lrand, rrand;

 mpte_lock_assert_held(mp_tp->mpt_mpte);

 lrand = rrand = 0;
 mptcp_get_rands(aid, mp_tp, &lrand, &rrand);
 mptcp_hmac_sha1(mp_tp->mpt_localkey, mp_tp->mpt_remotekey, lrand, rrand,
     digest);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int64_t ;
struct mptcb {scalar_t__ mpt_version; scalar_t__ mpt_remote_idsn; scalar_t__ mpt_rcvnxt; int mpt_remotetoken; int mpt_remotekey; int mpt_mpte; } ;
typedef int caddr_t ;


 scalar_t__ MPTCP_STD_VERSION_0 ;
 int SHA1_RESULTLEN ;
 int mptcp_do_sha1 (int *,char*) ;
 int mptcp_generate_idsn (char*,int,int ,int) ;
 int mptcp_generate_token (char*,int,int ,int) ;
 int mpte_lock_assert_held (int ) ;

int
mptcp_init_remote_parms(struct mptcb *mp_tp)
{
 char remote_digest[SHA1_RESULTLEN];
 mpte_lock_assert_held(mp_tp->mpt_mpte);


 if (mp_tp->mpt_version != MPTCP_STD_VERSION_0)
  return (-1);


 mptcp_do_sha1(&mp_tp->mpt_remotekey, remote_digest);
 mptcp_generate_token(remote_digest, SHA1_RESULTLEN,
     (caddr_t)&mp_tp->mpt_remotetoken, sizeof (mp_tp->mpt_remotetoken));
 mptcp_generate_idsn(remote_digest, SHA1_RESULTLEN,
     (caddr_t)&mp_tp->mpt_remote_idsn, sizeof (u_int64_t));
 mp_tp->mpt_rcvnxt = mp_tp->mpt_remote_idsn + 1;

 return (0);
}

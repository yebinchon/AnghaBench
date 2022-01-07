
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int64_t ;
struct mptses {struct mptcb* mpte_mptcb; } ;
struct mptcb {scalar_t__ mpt_snduna; scalar_t__ mpt_sndnxt; scalar_t__ mpt_local_idsn; scalar_t__ mpt_sndmax; int mpt_localtoken; int mpt_localkey; } ;
typedef int caddr_t ;


 int SHA1_RESULTLEN ;
 int mptcp_conn_properties (struct mptcb*) ;
 int mptcp_do_sha1 (int *,char*) ;
 int mptcp_generate_idsn (char*,int,int ,int) ;
 int mptcp_generate_token (char*,int,int ,int) ;
 int read_frandom (int *,int) ;

__attribute__((used)) static void
mptcp_init_local_parms(struct mptses *mpte)
{
 struct mptcb *mp_tp = mpte->mpte_mptcb;
 char key_digest[SHA1_RESULTLEN];

 read_frandom(&mp_tp->mpt_localkey, sizeof(mp_tp->mpt_localkey));
 mptcp_do_sha1(&mp_tp->mpt_localkey, key_digest);

 mptcp_generate_token(key_digest, SHA1_RESULTLEN,
     (caddr_t)&mp_tp->mpt_localtoken, sizeof (mp_tp->mpt_localtoken));
 mptcp_generate_idsn(key_digest, SHA1_RESULTLEN,
     (caddr_t)&mp_tp->mpt_local_idsn, sizeof (u_int64_t));


 mp_tp->mpt_snduna = mp_tp->mpt_sndmax = mp_tp->mpt_local_idsn + 1;
 mp_tp->mpt_sndnxt = mp_tp->mpt_snduna;

 mptcp_conn_properties(mp_tp);
}

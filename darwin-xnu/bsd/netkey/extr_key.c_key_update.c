
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u_int8_t ;
typedef scalar_t__ u_int32_t ;
typedef scalar_t__ u_int16_t ;
struct socket {int dummy; } ;
struct secasvar {scalar_t__ spi; int flags; TYPE_3__* sah; struct socket* so; scalar_t__ flags2; int pid; } ;
struct secasindex {int dummy; } ;
struct secashead {int dummy; } ;
struct sadb_x_sa2 {scalar_t__ sadb_x_sa2_flags; scalar_t__ sadb_x_sa2_reqid; int sadb_x_sa2_mode; } ;
struct sadb_sa {scalar_t__ sadb_sa_spi; } ;
struct sadb_msghdr {int* extlen; TYPE_4__* msg; int ** ext; } ;
struct sadb_address {int dummy; } ;
struct mbuf {int dummy; } ;
typedef TYPE_5__* ifnet_t ;
struct TYPE_11__ {int if_index; } ;
struct TYPE_10__ {scalar_t__ sadb_msg_satype; int sadb_msg_pid; int sadb_msg_seq; } ;
struct TYPE_7__ {scalar_t__ ss_family; } ;
struct TYPE_8__ {scalar_t__ proto; scalar_t__ mode; TYPE_1__ src; } ;
struct TYPE_9__ {TYPE_2__ saidx; } ;


 scalar_t__ AF_INET ;
 int EINVAL ;
 int ENOBUFS ;
 int ENOENT ;
 int IPSEC_MODE_ANY ;
 scalar_t__ IPSEC_MODE_TRANSPORT ;
 int KEY_SADB_LOCKED ;
 int KEY_SENDUP_ALL ;
 int KEY_SETSECASIDX (scalar_t__,int ,scalar_t__,struct sadb_address*,struct sadb_address*,int ,struct secasindex*) ;
 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_NOTOWNED ;
 int LOG_DEBUG ;
 size_t SADB_EXT_ADDRESS_DST ;
 size_t SADB_EXT_ADDRESS_SRC ;
 size_t SADB_EXT_KEY_AUTH ;
 size_t SADB_EXT_KEY_ENCRYPT ;
 size_t SADB_EXT_LIFETIME_HARD ;
 size_t SADB_EXT_LIFETIME_SOFT ;
 size_t SADB_EXT_SA ;
 scalar_t__ SADB_SATYPE_AH ;
 scalar_t__ SADB_SATYPE_ESP ;
 int SADB_X_EXT_IPSECIF ;
 int SADB_X_EXT_NATT_MULTIPLEUSERS ;
 size_t SADB_X_EXT_SA2 ;
 scalar_t__ SADB_X_EXT_SA2_DELETE_ON_DETACH ;
 int ipseclog (int ) ;
 int key_freesav (struct secasvar*,int ) ;
 TYPE_5__* key_get_ipsec_if_from_message (struct sadb_msghdr const*,int ) ;
 struct mbuf* key_getmsgbuf_x1 (struct mbuf*,struct sadb_msghdr const*) ;
 struct secashead* key_getsah (struct secasindex*) ;
 struct secasvar* key_getsavbyseq (struct secashead*,int ) ;
 struct secasvar* key_getsavbyspi (struct secashead*,scalar_t__) ;
 int key_mature (struct secasvar*) ;
 scalar_t__ key_satype2proto (scalar_t__) ;
 int key_senderror (struct socket*,struct mbuf*,int) ;
 int key_sendup_mbuf (struct socket*,struct mbuf*,int ) ;
 int key_setident (struct secashead*,struct mbuf*,struct sadb_msghdr const*) ;
 int key_setsaval (struct secasvar*,struct mbuf*,struct sadb_msghdr const*) ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 int m_freem (struct mbuf*) ;
 scalar_t__ ntohl (scalar_t__) ;
 int panic (char*) ;
 int sadb_mutex ;

__attribute__((used)) static int
key_update(
     struct socket *so,
     struct mbuf *m,
     const struct sadb_msghdr *mhp)
{
 struct sadb_sa *sa0;
 struct sadb_address *src0, *dst0;
 ifnet_t ipsec_if = ((void*)0);
 struct secasindex saidx;
 struct secashead *sah;
 struct secasvar *sav;
 u_int16_t proto;
 u_int8_t mode;
 u_int32_t reqid;
 u_int16_t flags2;
 int error;

 LCK_MTX_ASSERT(sadb_mutex, LCK_MTX_ASSERT_NOTOWNED);


 if (so == ((void*)0) || m == ((void*)0) || mhp == ((void*)0) || mhp->msg == ((void*)0))
  panic("key_update: NULL pointer is passed.\n");


 if ((proto = key_satype2proto(mhp->msg->sadb_msg_satype)) == 0) {
  ipseclog((LOG_DEBUG, "key_update: invalid satype is passed.\n"));
  return key_senderror(so, m, EINVAL);
 }

 if (mhp->ext[SADB_EXT_SA] == ((void*)0) ||
     mhp->ext[SADB_EXT_ADDRESS_SRC] == ((void*)0) ||
     mhp->ext[SADB_EXT_ADDRESS_DST] == ((void*)0) ||
     (mhp->msg->sadb_msg_satype == SADB_SATYPE_ESP &&
      mhp->ext[SADB_EXT_KEY_ENCRYPT] == ((void*)0)) ||
     (mhp->msg->sadb_msg_satype == SADB_SATYPE_AH &&
      mhp->ext[SADB_EXT_KEY_AUTH] == ((void*)0)) ||
     (mhp->ext[SADB_EXT_LIFETIME_HARD] != ((void*)0) &&
      mhp->ext[SADB_EXT_LIFETIME_SOFT] == ((void*)0)) ||
     (mhp->ext[SADB_EXT_LIFETIME_HARD] == ((void*)0) &&
      mhp->ext[SADB_EXT_LIFETIME_SOFT] != ((void*)0))) {
   ipseclog((LOG_DEBUG, "key_update: invalid message is passed.\n"));
   return key_senderror(so, m, EINVAL);
  }
 if (mhp->extlen[SADB_EXT_SA] < sizeof(struct sadb_sa) ||
     mhp->extlen[SADB_EXT_ADDRESS_SRC] < sizeof(struct sadb_address) ||
     mhp->extlen[SADB_EXT_ADDRESS_DST] < sizeof(struct sadb_address)) {
  ipseclog((LOG_DEBUG, "key_update: invalid message is passed.\n"));
  return key_senderror(so, m, EINVAL);
 }
 if (mhp->ext[SADB_X_EXT_SA2] != ((void*)0)) {
  mode = ((struct sadb_x_sa2 *)
    (void *)mhp->ext[SADB_X_EXT_SA2])->sadb_x_sa2_mode;
  reqid = ((struct sadb_x_sa2 *)
     (void *)mhp->ext[SADB_X_EXT_SA2])->sadb_x_sa2_reqid;
  flags2 = ((struct sadb_x_sa2 *)(void *)mhp->ext[SADB_X_EXT_SA2])->sadb_x_sa2_flags;
 } else {
  mode = IPSEC_MODE_ANY;
  reqid = 0;
  flags2 = 0;
 }


 sa0 = (struct sadb_sa *)(void *)mhp->ext[SADB_EXT_SA];
 src0 = (struct sadb_address *)(mhp->ext[SADB_EXT_ADDRESS_SRC]);
 dst0 = (struct sadb_address *)(mhp->ext[SADB_EXT_ADDRESS_DST]);
 ipsec_if = key_get_ipsec_if_from_message(mhp, SADB_X_EXT_IPSECIF);


 KEY_SETSECASIDX(proto, mode, reqid, src0 + 1, dst0 + 1, ipsec_if ? ipsec_if->if_index : 0, &saidx);

 lck_mtx_lock(sadb_mutex);


 if ((sah = key_getsah(&saidx)) == ((void*)0)) {
  lck_mtx_unlock(sadb_mutex);
  ipseclog((LOG_DEBUG, "key_update: no SA index found.\n"));
  return key_senderror(so, m, ENOENT);
 }



 error = key_setident(sah, m, mhp);
 if (error) {
  lck_mtx_unlock(sadb_mutex);
  return key_senderror(so, m, error);
 }
 if ((sav = key_getsavbyspi(sah, sa0->sadb_sa_spi)) == ((void*)0)) {
  lck_mtx_unlock(sadb_mutex);
  ipseclog((LOG_DEBUG,
      "key_update: no such a SA found (spi:%u)\n",
      (u_int32_t)ntohl(sa0->sadb_sa_spi)));
  return key_senderror(so, m, EINVAL);
 }



 if (sav->sah->saidx.proto != proto) {
  lck_mtx_unlock(sadb_mutex);
  ipseclog((LOG_DEBUG,
      "key_update: protocol mismatched (DB=%u param=%u)\n",
      sav->sah->saidx.proto, proto));
  return key_senderror(so, m, EINVAL);
 }
 if (sav->pid != mhp->msg->sadb_msg_pid) {
  lck_mtx_unlock(sadb_mutex);
  ipseclog((LOG_DEBUG,
      "key_update: pid mismatched (DB:%u param:%u)\n",
      sav->pid, mhp->msg->sadb_msg_pid));
  return key_senderror(so, m, EINVAL);
 }


 error = key_setsaval(sav, m, mhp);
 if (error) {
  key_freesav(sav, KEY_SADB_LOCKED);
  lck_mtx_unlock(sadb_mutex);
  return key_senderror(so, m, error);
 }

 sav->flags2 = flags2;
 if (flags2 & SADB_X_EXT_SA2_DELETE_ON_DETACH) {
  sav->so = so;
 }





 if ((sav->flags & SADB_X_EXT_NATT_MULTIPLEUSERS) != 0 &&
  (sav->sah->saidx.mode != IPSEC_MODE_TRANSPORT ||
   sav->sah->saidx.src.ss_family != AF_INET))
  sav->flags &= ~SADB_X_EXT_NATT_MULTIPLEUSERS;


 if ((error = key_mature(sav)) != 0) {
  key_freesav(sav, KEY_SADB_LOCKED);
  lck_mtx_unlock(sadb_mutex);
  return key_senderror(so, m, error);
 }

 lck_mtx_unlock(sadb_mutex);

    {
  struct mbuf *n;


  n = key_getmsgbuf_x1(m, mhp);
  if (n == ((void*)0)) {
   ipseclog((LOG_DEBUG, "key_update: No more memory.\n"));
   return key_senderror(so, m, ENOBUFS);
  }

  m_freem(m);
  return key_sendup_mbuf(so, n, KEY_SENDUP_ALL);
    }
}

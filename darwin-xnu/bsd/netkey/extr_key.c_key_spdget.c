
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct socket {int dummy; } ;
struct secpolicy {int dummy; } ;
struct sadb_x_policy {int sadb_x_policy_id; } ;
struct sadb_msghdr {int* extlen; TYPE_1__* msg; int ** ext; } ;
struct mbuf {int dummy; } ;
struct TYPE_2__ {int sadb_msg_pid; } ;


 int EINVAL ;
 int ENOBUFS ;
 int ENOENT ;
 int KEY_SENDUP_ONE ;
 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_NOTOWNED ;
 int LOG_DEBUG ;
 size_t SADB_X_EXT_POLICY ;
 int SADB_X_SPDGET ;
 struct secpolicy* __key_getspbyid (int ) ;
 int ipseclog (int ) ;
 int key_senderror (struct socket*,struct mbuf*,int ) ;
 int key_sendup_mbuf (struct socket*,struct mbuf*,int ) ;
 struct mbuf* key_setdumpsp (struct secpolicy*,int ,int ,int ) ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 int m_freem (struct mbuf*) ;
 int panic (char*) ;
 int sadb_mutex ;

__attribute__((used)) static int
key_spdget(
     struct socket *so,
     struct mbuf *m,
     const struct sadb_msghdr *mhp)
{
 u_int32_t id;
 struct secpolicy *sp;
 struct mbuf *n;

 LCK_MTX_ASSERT(sadb_mutex, LCK_MTX_ASSERT_NOTOWNED);


 if (so == ((void*)0) || m == ((void*)0) || mhp == ((void*)0) || mhp->msg == ((void*)0))
  panic("key_spdget: NULL pointer is passed.\n");

 if (mhp->ext[SADB_X_EXT_POLICY] == ((void*)0) ||
     mhp->extlen[SADB_X_EXT_POLICY] < sizeof(struct sadb_x_policy)) {
  ipseclog((LOG_DEBUG, "key_spdget: invalid message is passed.\n"));
  return key_senderror(so, m, EINVAL);
 }

 id = ((struct sadb_x_policy *)
    (void *)mhp->ext[SADB_X_EXT_POLICY])->sadb_x_policy_id;


 lck_mtx_lock(sadb_mutex);
 if ((sp = __key_getspbyid(id)) == ((void*)0)) {
  ipseclog((LOG_DEBUG, "key_spdget: no SP found id:%u.\n", id));
  lck_mtx_unlock(sadb_mutex);
  return key_senderror(so, m, ENOENT);
 }
 lck_mtx_unlock(sadb_mutex);
 n = key_setdumpsp(sp, SADB_X_SPDGET, 0, mhp->msg->sadb_msg_pid);
 if (n != ((void*)0)) {
  m_freem(m);
  return key_sendup_mbuf(so, n, KEY_SENDUP_ONE);
 } else
  return key_senderror(so, m, ENOBUFS);
}

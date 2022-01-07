
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {int dummy; } ;
struct sadb_msghdr {TYPE_1__* msg; } ;
struct sadb_msg {int dummy; } ;
struct mbuf {int dummy; } ;
struct keycb {int kp_promisc; } ;
struct TYPE_2__ {int sadb_msg_satype; scalar_t__ sadb_msg_errno; int sadb_msg_len; } ;


 int EINVAL ;
 int KEY_SENDUP_ALL ;
 int PFKEY_ALIGN8 (int) ;
 int PFKEY_UNUNIT64 (int ) ;
 int key_senderror (struct socket*,struct mbuf*,int ) ;
 int key_sendup_mbuf (struct socket*,struct mbuf*,int ) ;
 int m_adj (struct mbuf*,int ) ;
 int m_freem (struct mbuf*) ;
 int panic (char*) ;
 int socket_lock (struct socket*,int) ;
 int socket_unlock (struct socket*,int) ;
 scalar_t__ sotorawcb (struct socket*) ;

__attribute__((used)) static int
key_promisc(
   struct socket *so,
   struct mbuf *m,
   const struct sadb_msghdr *mhp)
{
 int olen;


 if (so == ((void*)0) || m == ((void*)0) || mhp == ((void*)0) || mhp->msg == ((void*)0))
  panic("key_promisc: NULL pointer is passed.\n");

 olen = PFKEY_UNUNIT64(mhp->msg->sadb_msg_len);

 if (olen < sizeof(struct sadb_msg)) {

  return key_senderror(so, m, EINVAL);




 } else if (olen == sizeof(struct sadb_msg)) {

  struct keycb *kp;

  socket_lock(so, 1);
  if ((kp = (struct keycb *)sotorawcb(so)) == ((void*)0))
   return key_senderror(so, m, EINVAL);
  mhp->msg->sadb_msg_errno = 0;
  switch (mhp->msg->sadb_msg_satype) {
   case 0:
   case 1:
    kp->kp_promisc = mhp->msg->sadb_msg_satype;
    break;
   default:
    socket_unlock(so, 1);
    return key_senderror(so, m, EINVAL);
  }
  socket_unlock(so, 1);


  mhp->msg->sadb_msg_errno = 0;
  return key_sendup_mbuf(so, m, KEY_SENDUP_ALL);
 } else {


  m_adj(m, PFKEY_ALIGN8(sizeof(struct sadb_msg)));


  return key_sendup_mbuf(so, m, KEY_SENDUP_ALL);
 }
}

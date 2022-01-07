
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int * tqh_first; } ;
struct socket {int so_options; int so_state; scalar_t__ so_error; int so_flags; TYPE_2__* so_proto; int * so_filt; int so_flags1; int so_qlen; int * so_head; TYPE_4__ so_comp; int so_timeo; } ;
struct sockaddr {int sa_len; } ;
typedef struct socket* socket_t ;
typedef int * sock_upcall ;
typedef int lck_mtx_t ;
typedef scalar_t__ errno_t ;
typedef int caddr_t ;
struct TYPE_9__ {int nas_socket_in_kernel_os_total; int nas_socket_in_kernel_total; } ;
struct TYPE_8__ {int * (* pr_getlock ) (struct socket*,int ) ;TYPE_1__* pr_domain; } ;
struct TYPE_7__ {int * dom_mtx; } ;


 scalar_t__ ECONNABORTED ;
 scalar_t__ EINVAL ;
 scalar_t__ ENOTSUP ;
 scalar_t__ EWOULDBLOCK ;
 int FREE (struct sockaddr*,int ) ;
 int INC_ATOMIC_INT64_LIM (int ) ;
 int LCK_MTX_ASSERT (int *,int ) ;
 int LCK_MTX_ASSERT_NOTOWNED ;
 int MSG_DONTWAIT ;
 int M_SONAME ;
 int PCATCH ;
 int PR_F_WILLUNLOCK ;
 int PSOCK ;
 int SHUTDOWN_SOCKET_LEVEL_DISCONNECT_INTERNAL ;
 int SOF1_IN_KERNEL_SOCKET ;
 int SOF_DEFUNCT ;
 int SO_ACCEPTCONN ;
 int SS_CANTRCVMORE ;
 int SS_COMP ;
 int SS_NBIO ;
 scalar_t__ TAILQ_EMPTY (TYPE_4__*) ;
 struct socket* TAILQ_FIRST (TYPE_4__*) ;
 int TAILQ_REMOVE (TYPE_4__*,struct socket*,int ) ;
 int current_proc () ;
 int memcpy (struct sockaddr*,struct sockaddr*,int) ;
 scalar_t__ msleep (int ,int *,int,char*,int *) ;
 TYPE_3__ net_api_stats ;
 int so_acquire_accept_list (struct socket*,int *) ;
 int so_list ;
 int so_release_accept_list (struct socket*) ;
 scalar_t__ soacceptfilter (struct socket*,struct socket*) ;
 int soacceptlock (struct socket*,struct sockaddr**,int ) ;
 int sock_setupcalls_locked (struct socket*,int *,void*,int *,void*,int ) ;
 int socket_lock (struct socket*,int) ;
 int socket_unlock (struct socket*,int) ;
 int sodefunct (int ,struct socket*,int ) ;
 int sodereference (struct socket*) ;
 int * stub1 (struct socket*,int ) ;
 int * stub2 (struct socket*,int ) ;

errno_t
sock_accept_common(socket_t sock, struct sockaddr *from, int fromlen, int flags,
    sock_upcall callback, void *cookie, socket_t *new_sock, bool is_internal)
{
 struct sockaddr *sa;
 struct socket *new_so;
 lck_mtx_t *mutex_held;
 int dosocklock;
 errno_t error = 0;

 if (sock == ((void*)0) || new_sock == ((void*)0))
  return (EINVAL);

 socket_lock(sock, 1);
 if ((sock->so_options & SO_ACCEPTCONN) == 0) {
  socket_unlock(sock, 1);
  return (EINVAL);
 }
 if ((flags & ~(MSG_DONTWAIT)) != 0) {
  socket_unlock(sock, 1);
  return (ENOTSUP);
 }
check_again:
 if (((flags & MSG_DONTWAIT) != 0 || (sock->so_state & SS_NBIO) != 0) &&
     sock->so_comp.tqh_first == ((void*)0)) {
  socket_unlock(sock, 1);
  return (EWOULDBLOCK);
 }

 if (sock->so_proto->pr_getlock != ((void*)0)) {
  mutex_held = (*sock->so_proto->pr_getlock)(sock, PR_F_WILLUNLOCK);
  dosocklock = 1;
 } else {
  mutex_held = sock->so_proto->pr_domain->dom_mtx;
  dosocklock = 0;
 }

 while (TAILQ_EMPTY(&sock->so_comp) && sock->so_error == 0) {
  if (sock->so_state & SS_CANTRCVMORE) {
   sock->so_error = ECONNABORTED;
   break;
  }
  error = msleep((caddr_t)&sock->so_timeo, mutex_held,
      PSOCK | PCATCH, "sock_accept", ((void*)0));
  if (error != 0) {
   socket_unlock(sock, 1);
   return (error);
  }
 }
 if (sock->so_error != 0) {
  error = sock->so_error;
  sock->so_error = 0;
  socket_unlock(sock, 1);
  return (error);
 }

 so_acquire_accept_list(sock, ((void*)0));
 if (TAILQ_EMPTY(&sock->so_comp)) {
  so_release_accept_list(sock);
  goto check_again;
 }
 new_so = TAILQ_FIRST(&sock->so_comp);
 TAILQ_REMOVE(&sock->so_comp, new_so, so_list);
 new_so->so_state &= ~SS_COMP;
 new_so->so_head = ((void*)0);
 sock->so_qlen--;

 so_release_accept_list(sock);




 new_so->so_flags1 |= SOF1_IN_KERNEL_SOCKET;
 INC_ATOMIC_INT64_LIM(net_api_stats.nas_socket_in_kernel_total);
 if (is_internal) {
  INC_ATOMIC_INT64_LIM(net_api_stats.nas_socket_in_kernel_os_total);
 }





 if (new_so->so_filt != ((void*)0)) {






  socket_unlock(sock, 0);
  if ((error = soacceptfilter(new_so, sock)) != 0) {

   sodereference(sock);
   return (error);
  }
  socket_lock(sock, 0);
 }

 if (dosocklock) {
  LCK_MTX_ASSERT(new_so->so_proto->pr_getlock(new_so, 0),
      LCK_MTX_ASSERT_NOTOWNED);
  socket_lock(new_so, 1);
 }

 (void) soacceptlock(new_so, &sa, 0);

 socket_unlock(sock, 1);


 if (callback != ((void*)0)) {



  sock_setupcalls_locked(new_so, callback, cookie, ((void*)0), ((void*)0), 0);

 }

 if (sa != ((void*)0) && from != ((void*)0)) {
  if (fromlen > sa->sa_len)
   fromlen = sa->sa_len;
  memcpy(from, sa, fromlen);
 }
 if (sa != ((void*)0))
  FREE(sa, M_SONAME);





 if (new_so->so_flags & SOF_DEFUNCT) {
  (void) sodefunct(current_proc(), new_so,
      SHUTDOWN_SOCKET_LEVEL_DISCONNECT_INTERNAL);
 }
 *new_sock = new_so;
 if (dosocklock)
  socket_unlock(new_so, 1);
 return (error);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int sb_flags; } ;
struct TYPE_8__ {int sb_flags; } ;
struct TYPE_12__ {int * tqh_first; } ;
struct socket {int so_options; int so_state; int so_error; int so_usecount; int so_flags; TYPE_2__ so_snd; TYPE_1__ so_rcv; int * so_filt; int so_qlen; int * so_head; TYPE_5__ so_comp; int so_timeo; TYPE_4__* so_proto; } ;
struct sockaddr {int sa_len; } ;
struct proc {int dummy; } ;
struct fileproc {short f_flag; struct sockaddr* f_data; int * f_ops; } ;
struct accept_nocancel_args {int s; int anamelen; int name; } ;
typedef int socklen_t ;
typedef int lck_mtx_t ;
typedef int int64_t ;
typedef int int32_t ;
typedef struct sockaddr* caddr_t ;
struct TYPE_11__ {int pr_flags; TYPE_3__* pr_domain; int * (* pr_getlock ) (struct socket*,int ) ;} ;
struct TYPE_10__ {int * dom_mtx; } ;


 int AUDIT_ARG (int,int,...) ;
 int DBG_FUNC_START ;
 int EBADF ;
 void* ECONNABORTED ;
 int EINVAL ;
 int ENOTSOCK ;
 scalar_t__ ENTR_SHOULDTRACE ;
 int EOPNOTSUPP ;
 int EWOULDBLOCK ;
 int FASYNC ;
 int FNONBLOCK ;
 int FREE (struct sockaddr*,int ) ;
 int KERNEL_ENERGYTRACE (int ,int ,int,int ,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int MIN (int,int) ;
 int M_SONAME ;
 int PCATCH ;
 int PR_CONNREQUIRED ;
 int PR_F_WILLUNLOCK ;
 int PSOCK ;
 int SB_ASYNC ;
 int SHUTDOWN_SOCKET_LEVEL_DISCONNECT_INTERNAL ;
 int SOF_DEFUNCT ;
 int SO_ACCEPTCONN ;
 int SS_ASYNC ;
 int SS_CANTRCVMORE ;
 int SS_COMP ;
 int SS_DRAINING ;
 int SS_NBIO ;
 int SS_NOFDREF ;
 scalar_t__ TAILQ_EMPTY (TYPE_5__*) ;
 struct socket* TAILQ_FIRST (TYPE_5__*) ;
 int TAILQ_REMOVE (TYPE_5__*,struct socket*,int ) ;
 scalar_t__ VM_KERNEL_ADDRPERM (struct socket*) ;
 int copyin (int ,struct sockaddr*,int) ;
 int copyout (struct sockaddr*,int ,int) ;
 int current_proc () ;
 int falloc (struct proc*,struct fileproc**,int*,int ) ;
 int file_drop (int) ;
 int fp_drop (struct proc*,int,struct fileproc*,int) ;
 int fp_getfsock (struct proc*,int,struct fileproc**,struct socket**) ;
 int kEnTrActKernSocket ;
 int kauth_cred_get () ;
 int lck_mtx_assert (int *,int ) ;
 int mac_socket_check_accept (int ,struct socket*) ;
 int mac_socket_check_accepted (int ,struct socket*) ;
 int msleep (struct sockaddr*,int *,int,char*,int ) ;
 int panic (char*,struct socket*,int) ;
 int proc_fdlock (struct proc*) ;
 int proc_fdunlock (struct proc*) ;
 int procfdtbl_releasefd (struct proc*,int,int *) ;
 int so_acquire_accept_list (struct socket*,int *) ;
 int so_list ;
 int so_release_accept_list (struct socket*) ;
 int soacceptfilter (struct socket*,struct socket*) ;
 int soacceptlock (struct socket*,struct sockaddr**,int ) ;
 int sockaddr ;
 int socket_lock (struct socket*,int) ;
 int socket_unlock (struct socket*,int) ;
 int socketops ;
 int soclose (struct socket*) ;
 int sodefunct (int ,struct socket*,int ) ;
 int sodereference (struct socket*) ;
 int * stub1 (struct socket*,int ) ;
 int vfs_context_current () ;
 int vfs_context_cwd (int ) ;

int
accept_nocancel(struct proc *p, struct accept_nocancel_args *uap,
    int32_t *retval)
{
 struct fileproc *fp;
 struct sockaddr *sa = ((void*)0);
 socklen_t namelen;
 int error;
 struct socket *head, *so = ((void*)0);
 lck_mtx_t *mutex_held;
 int fd = uap->s;
 int newfd;
 short fflag;
 int dosocklock = 0;

 *retval = -1;

 AUDIT_ARG(fd, uap->s);

 if (uap->name) {
  error = copyin(uap->anamelen, (caddr_t)&namelen,
      sizeof (socklen_t));
  if (error)
   return (error);
 }
 error = fp_getfsock(p, fd, &fp, &head);
 if (error) {
  if (error == EOPNOTSUPP)
   error = ENOTSOCK;
  return (error);
 }
 if (head == ((void*)0)) {
  error = EBADF;
  goto out;
 }





 socket_lock(head, 1);

 if (head->so_proto->pr_getlock != ((void*)0)) {
  mutex_held = (*head->so_proto->pr_getlock)(head, PR_F_WILLUNLOCK);
  dosocklock = 1;
 } else {
  mutex_held = head->so_proto->pr_domain->dom_mtx;
  dosocklock = 0;
 }

 if ((head->so_options & SO_ACCEPTCONN) == 0) {
  if ((head->so_proto->pr_flags & PR_CONNREQUIRED) == 0) {
   error = EOPNOTSUPP;
  } else {

   error = EINVAL;
  }
  socket_unlock(head, 1);
  goto out;
 }
check_again:
 if ((head->so_state & SS_NBIO) && head->so_comp.tqh_first == ((void*)0)) {
  socket_unlock(head, 1);
  error = EWOULDBLOCK;
  goto out;
 }
 while (TAILQ_EMPTY(&head->so_comp) && head->so_error == 0) {
  if (head->so_state & SS_CANTRCVMORE) {
   head->so_error = ECONNABORTED;
   break;
  }
  if (head->so_usecount < 1)
   panic("accept: head=%p refcount=%d\n", head,
       head->so_usecount);
  error = msleep((caddr_t)&head->so_timeo, mutex_held,
      PSOCK | PCATCH, "accept", 0);
  if (head->so_usecount < 1)
   panic("accept: 2 head=%p refcount=%d\n", head,
       head->so_usecount);
  if ((head->so_state & SS_DRAINING)) {
   error = ECONNABORTED;
  }
  if (error) {
   socket_unlock(head, 1);
   goto out;
  }
 }
 if (head->so_error) {
  error = head->so_error;
  head->so_error = 0;
  socket_unlock(head, 1);
  goto out;
 }
 lck_mtx_assert(mutex_held, LCK_MTX_ASSERT_OWNED);

 so_acquire_accept_list(head, ((void*)0));
 if (TAILQ_EMPTY(&head->so_comp)) {
  so_release_accept_list(head);
  goto check_again;
 }

 so = TAILQ_FIRST(&head->so_comp);
 TAILQ_REMOVE(&head->so_comp, so, so_list);
 so->so_head = ((void*)0);
 so->so_state &= ~SS_COMP;
 head->so_qlen--;
 so_release_accept_list(head);


 socket_unlock(head, 0);
 if (so->so_filt != ((void*)0) && (error = soacceptfilter(so, head)) != 0) {

  sodereference(head);

  goto out;
 }

 fflag = fp->f_flag;
 error = falloc(p, &fp, &newfd, vfs_context_current());
 if (error) {







  socket_lock(so, 1);
  so->so_state &= ~SS_NOFDREF;
  socket_unlock(so, 1);
  soclose(so);
  sodereference(head);
  goto out;
 }
 *retval = newfd;
 fp->f_flag = fflag;
 fp->f_ops = &socketops;
 fp->f_data = (caddr_t)so;

 socket_lock(head, 0);
 if (dosocklock)
  socket_lock(so, 1);


 if (fp->f_flag & FNONBLOCK) {
  so->so_state |= SS_NBIO;
 } else {
  so->so_state &= ~SS_NBIO;
 }

 if (fp->f_flag & FASYNC) {
  so->so_state |= SS_ASYNC;
  so->so_rcv.sb_flags |= SB_ASYNC;
  so->so_snd.sb_flags |= SB_ASYNC;
 } else {
  so->so_state &= ~SS_ASYNC;
  so->so_rcv.sb_flags &= ~SB_ASYNC;
  so->so_snd.sb_flags &= ~SB_ASYNC;
 }

 (void) soacceptlock(so, &sa, 0);
 socket_unlock(head, 1);
 if (sa == ((void*)0)) {
  namelen = 0;
  if (uap->name)
   goto gotnoname;
  error = 0;
  goto releasefd;
 }
 AUDIT_ARG(sockaddr, vfs_context_cwd(vfs_context_current()), sa);

 if (uap->name) {
  socklen_t sa_len;


  sa_len = sa->sa_len;
  namelen = MIN(namelen, sa_len);
  error = copyout(sa, uap->name, namelen);
  if (!error)

   namelen = sa_len;
gotnoname:
  error = copyout((caddr_t)&namelen, uap->anamelen,
      sizeof (socklen_t));
 }
 FREE(sa, M_SONAME);

releasefd:




 if (so->so_flags & SOF_DEFUNCT) {
  sodefunct(current_proc(), so,
      SHUTDOWN_SOCKET_LEVEL_DISCONNECT_INTERNAL);
 }

 if (dosocklock)
  socket_unlock(so, 1);

 proc_fdlock(p);
 procfdtbl_releasefd(p, newfd, ((void*)0));
 fp_drop(p, newfd, fp, 1);
 proc_fdunlock(p);

out:
 file_drop(fd);

 if (error == 0 && ENTR_SHOULDTRACE) {
  KERNEL_ENERGYTRACE(kEnTrActKernSocket, DBG_FUNC_START,
      newfd, 0, (int64_t)VM_KERNEL_ADDRPERM(so));
 }
 return (error);
}

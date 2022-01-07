
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ user_addr_t ;
typedef int uio_t ;
struct user_msghdr {int msg_flags; int msg_controllen; scalar_t__ msg_control; int msg_namelen; int msg_name; } ;
struct socket {int so_state; TYPE_2__* so_proto; } ;
struct sockaddr {int dummy; } ;
struct proc {int dummy; } ;
struct mbuf {int dummy; } ;
struct fileproc {scalar_t__ f_type; scalar_t__ f_data; } ;
typedef scalar_t__ ssize_t ;
typedef scalar_t__ int32_t ;
typedef int caddr_t ;
struct TYPE_4__ {int pr_flags; TYPE_1__* pr_usrreqs; } ;
struct TYPE_3__ {int (* pru_soreceive ) (struct socket*,struct sockaddr**,int ,struct mbuf**,struct mbuf**,int *) ;} ;


 int AUDIT_ARG (int ,int ,struct sockaddr*) ;
 int DBG_FNC_RECVIT ;
 int DBG_FUNC_END ;
 int DBG_FUNC_START ;
 scalar_t__ DTYPE_SOCKET ;
 int EBADF ;
 int EINTR ;
 int EINVAL ;
 int ENOTSOCK ;
 int ERESTART ;
 int EWOULDBLOCK ;
 int FREE (struct sockaddr*,int ) ;
 int KERNEL_DEBUG (int,int,int ,int ,int ,int ) ;
 int M_SONAME ;
 int PR_CONNREQUIRED ;
 int SS_DEFUNCT ;
 int SS_ISCONNECTED ;
 int copyout (int ,scalar_t__,int) ;
 int copyout_control (struct proc*,struct mbuf*,scalar_t__,int *,int *) ;
 int copyout_sa (struct sockaddr*,int ,int *) ;
 int fp_drop (struct proc*,int,struct fileproc*,int) ;
 int fp_lookup (struct proc*,int,struct fileproc**,int) ;
 int kauth_cred_get () ;
 int m_freem (struct mbuf*) ;
 int mac_socket_check_receive (int ,struct socket*) ;
 int proc_fdlock (struct proc*) ;
 int proc_fdunlock (struct proc*) ;
 int sockaddr ;
 int stub1 (struct socket*,struct sockaddr**,int ,struct mbuf**,struct mbuf**,int *) ;
 scalar_t__ uio_resid (int ) ;
 int vfs_context_current () ;
 int vfs_context_cwd (int ) ;

__attribute__((used)) static int
recvit(struct proc *p, int s, struct user_msghdr *mp, uio_t uiop,
    user_addr_t namelenp, int32_t *retval)
{
 ssize_t len;
 int error;
 struct mbuf *control = 0;
 struct socket *so;
 struct sockaddr *fromsa = 0;
 struct fileproc *fp;

 KERNEL_DEBUG(DBG_FNC_RECVIT | DBG_FUNC_START, 0, 0, 0, 0, 0);
 proc_fdlock(p);
 if ((error = fp_lookup(p, s, &fp, 1))) {
  KERNEL_DEBUG(DBG_FNC_RECVIT | DBG_FUNC_END, error, 0, 0, 0, 0);
  proc_fdunlock(p);
  return (error);
 }
 if (fp->f_type != DTYPE_SOCKET) {
  fp_drop(p, s, fp, 1);
  proc_fdunlock(p);
  return (ENOTSOCK);
 }

 so = (struct socket *)fp->f_data;
 if (so == ((void*)0)) {
  fp_drop(p, s, fp, 1);
  proc_fdunlock(p);
  return (EBADF);
 }

 proc_fdunlock(p);
 if (uio_resid(uiop) < 0) {
  KERNEL_DEBUG(DBG_FNC_RECVIT | DBG_FUNC_END, EINVAL, 0, 0, 0, 0);
  error = EINVAL;
  goto out1;
 }

 len = uio_resid(uiop);
 error = so->so_proto->pr_usrreqs->pru_soreceive(so, &fromsa, uiop,
     (struct mbuf **)0, mp->msg_control ? &control : (struct mbuf **)0,
     &mp->msg_flags);
 if (fromsa)
  AUDIT_ARG(sockaddr, vfs_context_cwd(vfs_context_current()),
      fromsa);
 if (error) {
  if (uio_resid(uiop) != len && (error == ERESTART ||
      error == EINTR || error == EWOULDBLOCK))
   error = 0;
 }
 if (error)
  goto out;

 *retval = len - uio_resid(uiop);

 if (mp->msg_name) {
  error = copyout_sa(fromsa, mp->msg_name, &mp->msg_namelen);
  if (error)
   goto out;

  if (namelenp &&
      (error = copyout((caddr_t)&mp->msg_namelen, namelenp,
      sizeof (int)))) {
   goto out;
  }
 }

 if (mp->msg_control) {
  error = copyout_control(p, control, mp->msg_control,
      &mp->msg_controllen, &mp->msg_flags);
 }
out:
 if (fromsa)
  FREE(fromsa, M_SONAME);
 if (control)
  m_freem(control);
 KERNEL_DEBUG(DBG_FNC_RECVIT | DBG_FUNC_END, error, 0, 0, 0, 0);
out1:
 fp_drop(p, s, fp, 0);
 return (error);
}

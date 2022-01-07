
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ user_ssize_t ;
typedef int uio_t ;
struct user_msghdr {int msg_namelen; int msg_controllen; int msg_control; int msg_name; } ;
struct socket {int so_state; int so_flags; TYPE_2__* so_proto; } ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
struct proc {int dummy; } ;
struct mbuf {int dummy; } ;
struct cmsghdr {int dummy; } ;
typedef int ss ;
typedef int int32_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_4__ {TYPE_1__* pr_usrreqs; } ;
struct TYPE_3__ {int (* pru_sosend ) (struct socket*,struct sockaddr*,int ,int ,struct mbuf*,int) ;} ;


 int AUDIT_ARG (int ,int ,struct sockaddr*) ;
 int DBG_FNC_SENDIT ;
 int DBG_FUNC_END ;
 int DBG_FUNC_START ;
 int EINTR ;
 int EINVAL ;
 int EPIPE ;
 int ERESTART ;
 int EWOULDBLOCK ;
 scalar_t__ FALSE ;
 int FREE (struct sockaddr*,int ) ;
 int KERNEL_DEBUG (int,int,int ,int ,int ,int ) ;
 int MT_CONTROL ;
 int M_SONAME ;
 int SIGPIPE ;
 int SOF_NOSIGPIPE ;
 int SS_DEFUNCT ;
 scalar_t__ TRUE ;
 int USER_ADDR_NULL ;
 int getsockaddr (struct socket*,struct sockaddr**,int ,int,scalar_t__) ;
 int getsockaddr_s (struct socket*,struct sockaddr_storage*,int ,int,scalar_t__) ;
 int kauth_cred_get () ;
 int mac_socket_check_send (int ,struct socket*,struct sockaddr*) ;
 int psignal (struct proc*,int ) ;
 int sockaddr ;
 int sockargs (struct mbuf**,int ,int,int ) ;
 int stub1 (struct socket*,struct sockaddr*,int ,int ,struct mbuf*,int) ;
 scalar_t__ uio_resid (int ) ;
 int vfs_context_current () ;
 int vfs_context_cwd (int ) ;

__attribute__((used)) static int
sendit(struct proc *p, struct socket *so, struct user_msghdr *mp, uio_t uiop,
    int flags, int32_t *retval)
{
 struct mbuf *control = ((void*)0);
 struct sockaddr_storage ss;
 struct sockaddr *to = ((void*)0);
 boolean_t want_free = TRUE;
 int error;
 user_ssize_t len;

 KERNEL_DEBUG(DBG_FNC_SENDIT | DBG_FUNC_START, 0, 0, 0, 0, 0);

 if (mp->msg_name != USER_ADDR_NULL) {
  if (mp->msg_namelen > sizeof (ss)) {
   error = getsockaddr(so, &to, mp->msg_name,
       mp->msg_namelen, TRUE);
  } else {
   error = getsockaddr_s(so, &ss, mp->msg_name,
       mp->msg_namelen, TRUE);
   if (error == 0) {
    to = (struct sockaddr *)&ss;
    want_free = FALSE;
   }
  }
  if (error != 0)
   goto out;
  AUDIT_ARG(sockaddr, vfs_context_cwd(vfs_context_current()), to);
 }
 if (mp->msg_control != USER_ADDR_NULL) {
  if (mp->msg_controllen < sizeof (struct cmsghdr)) {
   error = EINVAL;
   goto bad;
  }
  error = sockargs(&control, mp->msg_control,
      mp->msg_controllen, MT_CONTROL);
  if (error != 0)
   goto bad;
 }
 len = uio_resid(uiop);
 error = so->so_proto->pr_usrreqs->pru_sosend(so, to, uiop, 0,
  control, flags);
 if (error != 0) {
  if (uio_resid(uiop) != len && (error == ERESTART ||
      error == EINTR || error == EWOULDBLOCK))
   error = 0;

  if (error == EPIPE && !(so->so_flags & SOF_NOSIGPIPE))
   psignal(p, SIGPIPE);
 }
 if (error == 0)
  *retval = (int)(len - uio_resid(uiop));
bad:
 if (to != ((void*)0) && want_free)
  FREE(to, M_SONAME);
out:
 KERNEL_DEBUG(DBG_FNC_SENDIT | DBG_FUNC_END, error, 0, 0, 0, 0);

 return (error);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uid_t ;
struct proc {int dummy; } ;
struct necp_session_open_args {int dummy; } ;
struct necp_session {int dummy; } ;
struct fileproc {TYPE_1__* f_fglob; } ;
struct TYPE_2__ {struct necp_session* fg_data; int * fg_ops; scalar_t__ fg_flag; } ;


 int EACCES ;
 int ENOMEM ;
 int FDFLAGS_SET (struct proc*,int,int) ;
 int LOG_ERR ;
 int NECPLOG0 (int ,char*) ;
 int PRIV_NET_PRIVILEGED_NECP_POLICIES ;
 int UF_EXCLOSE ;
 int UF_FORKCLOSE ;
 int falloc (struct proc*,struct fileproc**,int*,int ) ;
 int fp_drop (struct proc*,int,struct fileproc*,int) ;
 int fp_free (struct proc*,int,struct fileproc*) ;
 int kauth_cred_get () ;
 scalar_t__ kauth_cred_getuid (int ) ;
 struct necp_session* necp_create_session () ;
 int necp_session_fd_ops ;
 scalar_t__ priv_check_cred (int ,int ,int ) ;
 int proc_fdlock (struct proc*) ;
 int proc_fdunlock (struct proc*) ;
 int proc_ucred (struct proc*) ;
 int procfdtbl_releasefd (struct proc*,int,int *) ;
 int vfs_context_current () ;

int
necp_session_open(struct proc *p, struct necp_session_open_args *uap, int *retval)
{
#pragma unused(uap)
 int error = 0;
 struct necp_session *session = ((void*)0);
 struct fileproc *fp = ((void*)0);
 int fd = -1;

 uid_t uid = kauth_cred_getuid(proc_ucred(p));
 if (uid != 0 && priv_check_cred(kauth_cred_get(), PRIV_NET_PRIVILEGED_NECP_POLICIES, 0) != 0) {
  NECPLOG0(LOG_ERR, "Process does not hold necessary entitlement to open NECP session");
  error = EACCES;
  goto done;
 }

 error = falloc(p, &fp, &fd, vfs_context_current());
 if (error != 0) {
  goto done;
 }

 session = necp_create_session();
 if (session == ((void*)0)) {
  error = ENOMEM;
  goto done;
 }

 fp->f_fglob->fg_flag = 0;
 fp->f_fglob->fg_ops = &necp_session_fd_ops;
 fp->f_fglob->fg_data = session;

 proc_fdlock(p);
 FDFLAGS_SET(p, fd, (UF_EXCLOSE | UF_FORKCLOSE));
 procfdtbl_releasefd(p, fd, ((void*)0));
 fp_drop(p, fd, fp, 1);
 proc_fdunlock(p);

 *retval = fd;
done:
 if (error != 0) {
  if (fp != ((void*)0)) {
   fp_free(p, fd, fp);
   fp = ((void*)0);
  }
 }

 return (error);
}

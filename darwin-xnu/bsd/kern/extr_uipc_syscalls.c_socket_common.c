
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct proc {int dummy; } ;
struct fileproc {int f_flag; scalar_t__ f_data; int * f_ops; } ;
typedef int pid_t ;
typedef int int64_t ;
typedef int int32_t ;
typedef scalar_t__ caddr_t ;


 int AUDIT_ARG (int ,int,int,int) ;
 int DBG_FUNC_START ;
 int EACCES ;
 scalar_t__ ENTR_SHOULDTRACE ;
 int FREAD ;
 int FWRITE ;
 int KERNEL_ENERGYTRACE (int ,int ,int,int ,int ) ;
 int PRIV_NET_PRIVILEGED_SOCKET_DELEGATE ;
 scalar_t__ VM_KERNEL_ADDRPERM (struct socket*) ;
 int falloc (struct proc*,struct fileproc**,int*,int ) ;
 int fp_drop (struct proc*,int,struct fileproc*,int) ;
 int fp_free (struct proc*,int,struct fileproc*) ;
 int kEnTrActKernSocket ;
 int kauth_cred_get () ;
 int mac_socket_check_create (int ,int,int,int) ;
 int priv_check_cred (int ,int ,int ) ;
 int proc_fdlock (struct proc*) ;
 int proc_fdunlock (struct proc*) ;
 int procfdtbl_releasefd (struct proc*,int,int *) ;
 int socket ;
 int socketops ;
 int socreate (int,struct socket**,int,int) ;
 int socreate_delegate (int,struct socket**,int,int,int ) ;
 int vfs_context_current () ;

__attribute__((used)) static int
socket_common(struct proc *p,
  int domain,
  int type,
  int protocol,
  pid_t epid,
  int32_t *retval,
  int delegate)
{
 struct socket *so;
 struct fileproc *fp;
 int fd, error;

 AUDIT_ARG(socket, domain, type, protocol);






 if (delegate) {
  error = priv_check_cred(kauth_cred_get(),
      PRIV_NET_PRIVILEGED_SOCKET_DELEGATE, 0);
  if (error)
   return (EACCES);
 }

 error = falloc(p, &fp, &fd, vfs_context_current());
 if (error) {
  return (error);
 }
 fp->f_flag = FREAD|FWRITE;
 fp->f_ops = &socketops;

 if (delegate)
  error = socreate_delegate(domain, &so, type, protocol, epid);
 else
  error = socreate(domain, &so, type, protocol);

 if (error) {
  fp_free(p, fd, fp);
 } else {
  fp->f_data = (caddr_t)so;

  proc_fdlock(p);
  procfdtbl_releasefd(p, fd, ((void*)0));

  fp_drop(p, fd, fp, 1);
  proc_fdunlock(p);

  *retval = fd;
  if (ENTR_SHOULDTRACE) {
   KERNEL_ENERGYTRACE(kEnTrActKernSocket, DBG_FUNC_START,
       fd, 0, (int64_t)VM_KERNEL_ADDRPERM(so));
  }
 }
 return (error);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vnode_t ;
typedef int vfs_context_t ;
typedef int user_size_t ;
typedef int user_addr_t ;
struct vnode {int dummy; } ;
struct user64_stat64 {int dummy; } ;
struct user64_stat {int dummy; } ;
struct user32_stat64 {int dummy; } ;
struct user32_stat {int dummy; } ;
struct stat64 {long long* st_qspare; scalar_t__ st_lspare; } ;
struct stat {long long* st_qspare; scalar_t__ st_lspare; } ;
struct socket {int dummy; } ;
struct fileproc {int f_type; scalar_t__ f_data; TYPE_1__* f_fglob; } ;
typedef int proc_t ;
typedef scalar_t__ kauth_filesec_t ;
typedef int file_type_t ;
typedef scalar_t__ caddr_t ;
struct TYPE_2__ {int fg_cred; } ;


 int ARG_VNODE1 ;
 int AUDIT_ARG (int,int,...) ;





 int EBADF ;
 int EFAULT ;
 scalar_t__ IS_64BIT_PROCESS (int ) ;
 int KAUTH_FILESEC_COPYSIZE (scalar_t__) ;
 scalar_t__ KAUTH_FILESEC_NONE ;
 int USER_ADDR_NULL ;
 int copyout (scalar_t__,int ,int) ;
 int current_proc () ;
 int fp_drop (int ,int,struct fileproc*,int ) ;
 int fp_lookup (int ,int,struct fileproc**,int ) ;
 int fusize (int ) ;
 int kauth_filesec_free (scalar_t__) ;
 int kqueue_stat (void*,void*,int,int ) ;
 int munge_user32_stat (struct stat*,struct user32_stat*) ;
 int munge_user32_stat64 (struct stat64*,struct user32_stat64*) ;
 int munge_user64_stat (struct stat*,struct user64_stat*) ;
 int munge_user64_stat64 (struct stat64*,struct user64_stat64*) ;
 int pipe_stat (void*,void*,int) ;
 int pshm_stat (void*,void*,int) ;
 int soo_stat (struct socket*,void*,int) ;
 scalar_t__ susize (int ,int) ;
 int vfs_context_current () ;
 int vn_stat (int ,void*,scalar_t__*,int,int ) ;
 int vn_stat_noauth (int ,void*,int *,int,int ,int ) ;
 int vnode_getwithref (int ) ;
 int vnode_put (int ) ;
 int vnpath ;

__attribute__((used)) static int
fstat1(proc_t p, int fd, user_addr_t ub, user_addr_t xsecurity, user_addr_t xsecurity_size, int isstat64)
{
 struct fileproc *fp;
 union {
  struct stat sb;
  struct stat64 sb64;
 } source;
 union {
  struct user64_stat user64_sb;
  struct user32_stat user32_sb;
  struct user64_stat64 user64_sb64;
  struct user32_stat64 user32_sb64;
 } dest;
 int error, my_size;
 file_type_t type;
 caddr_t data;
 kauth_filesec_t fsec;
 user_size_t xsecurity_bufsize;
 vfs_context_t ctx = vfs_context_current();
 void * sbptr;


 AUDIT_ARG(fd, fd);

 if ((error = fp_lookup(p, fd, &fp, 0)) != 0) {
  return(error);
 }
 type = fp->f_type;
 data = fp->f_data;
 fsec = KAUTH_FILESEC_NONE;

 sbptr = (void *)&source;

 switch (type) {

 case 128:
  if ((error = vnode_getwithref((vnode_t)data)) == 0) {





   if (xsecurity == USER_ADDR_NULL) {
    error = vn_stat_noauth((vnode_t)data, sbptr, ((void*)0), isstat64, ctx,
             fp->f_fglob->fg_cred);
   } else {
    error = vn_stat((vnode_t)data, sbptr, &fsec, isstat64, ctx);
   }

   AUDIT_ARG(vnpath, (struct vnode *)data, ARG_VNODE1);
   (void)vnode_put((vnode_t)data);
  }
  break;







 case 131:
  error = pipe_stat((void *)data, sbptr, isstat64);
  break;

 case 130:
  error = pshm_stat((void *)data, sbptr, isstat64);
  break;

 case 132:
  error = kqueue_stat((void *)data, sbptr, isstat64, p);
  break;

 default:
  error = EBADF;
  goto out;
 }
 if (error == 0) {
  caddr_t sbp;

  if (isstat64 != 0) {
   source.sb64.st_lspare = 0;
   source.sb64.st_qspare[0] = 0LL;
   source.sb64.st_qspare[1] = 0LL;

   if (IS_64BIT_PROCESS(current_proc())) {
    munge_user64_stat64(&source.sb64, &dest.user64_sb64);
    my_size = sizeof(dest.user64_sb64);
    sbp = (caddr_t)&dest.user64_sb64;
   } else {
    munge_user32_stat64(&source.sb64, &dest.user32_sb64);
    my_size = sizeof(dest.user32_sb64);
    sbp = (caddr_t)&dest.user32_sb64;
   }
  } else {
   source.sb.st_lspare = 0;
   source.sb.st_qspare[0] = 0LL;
   source.sb.st_qspare[1] = 0LL;
   if (IS_64BIT_PROCESS(current_proc())) {
    munge_user64_stat(&source.sb, &dest.user64_sb);
    my_size = sizeof(dest.user64_sb);
    sbp = (caddr_t)&dest.user64_sb;
   } else {
    munge_user32_stat(&source.sb, &dest.user32_sb);
    my_size = sizeof(dest.user32_sb);
    sbp = (caddr_t)&dest.user32_sb;
   }
  }

  error = copyout(sbp, ub, my_size);
 }


 if (xsecurity != USER_ADDR_NULL) {


   if (fsec == KAUTH_FILESEC_NONE) {
   if (susize(xsecurity_size, 0) != 0) {
    error = EFAULT;
    goto out;
   }
  } else {

   xsecurity_bufsize = fusize(xsecurity_size);


   if (susize(xsecurity_size, KAUTH_FILESEC_COPYSIZE(fsec)) != 0) {
    error = EFAULT;
    goto out;
   }


   if (xsecurity_bufsize >= KAUTH_FILESEC_COPYSIZE(fsec))
    error = copyout(fsec, xsecurity, KAUTH_FILESEC_COPYSIZE(fsec));
  }
 }
out:
 fp_drop(p, fd, fp, 0);
 if (fsec != ((void*)0))
  kauth_filesec_free(fsec);
 return (error);
}

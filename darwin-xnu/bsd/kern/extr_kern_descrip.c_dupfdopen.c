
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fileproc {int f_flag; int f_fglob; } ;
struct filedesc {int fd_nfiles; int* fd_ofileflags; int fd_lastfile; struct fileproc** fd_ofiles; } ;
typedef int proc_t ;


 int EACCES ;
 int EBADF ;

 int EPERM ;
 int FP_ISGUARDED (struct fileproc*,int ) ;
 int FREAD ;
 int FWRITE ;
 int GUARD_DUP ;
 int O_CLOEXEC ;
 int UF_EXCLOSE ;
 int UF_RESERVED ;
 int current_proc () ;
 int fg_free (int ) ;
 int fg_ref (struct fileproc*) ;
 int mac_file_check_dup (int ,int ,int) ;
 int proc_fdlock (int ) ;
 int proc_fdunlock (int ) ;
 int proc_ucred (int ) ;

int
dupfdopen(struct filedesc *fdp, int indx, int dfd, int flags, int error)
{
 struct fileproc *wfp;
 struct fileproc *fp;



 proc_t p = current_proc();
 proc_fdlock(p);

 fp = fdp->fd_ofiles[indx];
 if (dfd < 0 || dfd >= fdp->fd_nfiles ||
   (wfp = fdp->fd_ofiles[dfd]) == ((void*)0) || wfp == fp ||
                 (fdp->fd_ofileflags[dfd] & UF_RESERVED)) {

         proc_fdunlock(p);
  return (EBADF);
 }
 switch (error) {
 case 128:
  if (FP_ISGUARDED(wfp, GUARD_DUP)) {
   proc_fdunlock(p);
   return (EPERM);
  }





         if (((flags & (FREAD|FWRITE)) | wfp->f_flag) != wfp->f_flag) {
          proc_fdunlock(p);
   return (EACCES);
  }
  if (indx > fdp->fd_lastfile)
   fdp->fd_lastfile = indx;
  (void)fg_ref(wfp);

  if (fp->f_fglob)
          fg_free(fp->f_fglob);
  fp->f_fglob = wfp->f_fglob;

  fdp->fd_ofileflags[indx] = fdp->fd_ofileflags[dfd] |
   (flags & O_CLOEXEC) ? UF_EXCLOSE : 0;

         proc_fdunlock(p);
  return (0);

 default:
         proc_fdunlock(p);
  return (error);
 }

}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fileproc {int f_fglob; } ;
struct filedesc {int* fd_ofileflags; scalar_t__* fd_ofiles; int fd_lastfile; } ;
typedef int proc_t ;
typedef int int32_t ;


 int EBADF ;
 int ENOMEM ;
 int LCK_MTX_ASSERT_OWNED ;
 int UF_RESERVED ;
 int* fdflags (int ,int) ;
 int fdrelse (int ,int) ;
 int fg_drop (struct fileproc*) ;
 int fg_ref (struct fileproc*) ;
 struct fileproc* fileproc_alloc_init (int *) ;
 int mac_file_check_dup (int ,int ,int) ;
 int panic (char*,int) ;
 int proc_fdlock (int ) ;
 int proc_fdlock_assert (int ,int ) ;
 int proc_fdunlock (int ) ;
 int proc_ucred (int ) ;
 int procfdtbl_releasefd (int ,int,struct fileproc*) ;

int
finishdup(proc_t p,
    struct filedesc *fdp, int old, int new, int fd_flags, int32_t *retval)
{
 struct fileproc *nfp;
 struct fileproc *ofp;







 if ((ofp = fdp->fd_ofiles[old]) == ((void*)0) ||
     (fdp->fd_ofileflags[old] & UF_RESERVED)) {
  fdrelse(p, new);
  return (EBADF);
 }
 fg_ref(ofp);
 proc_fdunlock(p);

 nfp = fileproc_alloc_init(((void*)0));

 proc_fdlock(p);

 if (nfp == ((void*)0)) {
  fg_drop(ofp);
  fdrelse(p, new);
  return (ENOMEM);
 }

 nfp->f_fglob = ofp->f_fglob;
 if (new > fdp->fd_lastfile)
  fdp->fd_lastfile = new;
 *fdflags(p, new) |= fd_flags;
 procfdtbl_releasefd(p, new, nfp);
 *retval = new;
 return (0);
}

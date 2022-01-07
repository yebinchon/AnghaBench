
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ vnode_t ;
struct filedesc {scalar_t__ fd_cdir; scalar_t__ fd_rdir; } ;
struct cdirargs {scalar_t__ olddp; scalar_t__ newdp; } ;
typedef TYPE_1__* proc_t ;
struct TYPE_5__ {struct filedesc* p_fd; } ;


 int PROC_RETURNED ;
 int proc_fdlock (TYPE_1__*) ;
 int proc_fdunlock (TYPE_1__*) ;
 int vnode_ref (scalar_t__) ;
 int vnode_rele (scalar_t__) ;

__attribute__((used)) static int
checkdirs_callback(proc_t p, void * arg)
{
 struct cdirargs * cdrp = (struct cdirargs * )arg;
 vnode_t olddp = cdrp->olddp;
 vnode_t newdp = cdrp->newdp;
 struct filedesc *fdp;
 vnode_t tvp;
 vnode_t fdp_cvp;
 vnode_t fdp_rvp;
 int cdir_changed = 0;
 int rdir_changed = 0;







 proc_fdlock(p);
 fdp = p->p_fd;
 if (fdp == (struct filedesc *)0) {
  proc_fdunlock(p);
  return(PROC_RETURNED);
 }
 fdp_cvp = fdp->fd_cdir;
 fdp_rvp = fdp->fd_rdir;
 proc_fdunlock(p);

 if (fdp_cvp == olddp) {
  vnode_ref(newdp);
  tvp = fdp->fd_cdir;
  fdp_cvp = newdp;
  cdir_changed = 1;
  vnode_rele(tvp);
 }
 if (fdp_rvp == olddp) {
  vnode_ref(newdp);
  tvp = fdp->fd_rdir;
  fdp_rvp = newdp;
  rdir_changed = 1;
  vnode_rele(tvp);
 }
 if (cdir_changed || rdir_changed) {
  proc_fdlock(p);
  fdp->fd_cdir = fdp_cvp;
  fdp->fd_rdir = fdp_rvp;
  proc_fdunlock(p);
 }
 return(PROC_RETURNED);
}

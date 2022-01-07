
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vnop_close_args {int a_fflag; int a_context; struct vnode* a_vp; } ;
struct vnode {int v_type; TYPE_1__* v_specinfo; int v_rdev; } ;
struct tty {int dummy; } ;
struct session {int s_ttypgrpid; struct tty* s_ttyp; int s_ttyvid; struct vnode* s_ttyvp; } ;
struct proc {int dummy; } ;
typedef int dev_t ;
struct TYPE_6__ {int (* d_close ) (int ,int,int ,struct proc*) ;} ;
struct TYPE_5__ {int (* d_close ) (int ,int,int ,struct proc*) ;} ;
struct TYPE_4__ {int si_opencount; } ;


 int BUF_WRITE_DATA ;
 int EBADF ;
 int IO_REVOKE ;
 int MNT_WAIT ;
 int NO_PID ;
 struct session* SESSION_NULL ;
 struct tty* SESSION_TP (struct session*) ;
 int S_IFBLK ;
 int S_IFCHR ;
 struct tty* TTY_NULL ;


 TYPE_3__* bdevsw ;
 int buf_invalidateblks (struct vnode*,int ,int ,int ) ;
 TYPE_2__* cdevsw ;
 int devsw_lock (int ,int ) ;
 int devsw_unlock (int ,int ) ;
 size_t major (int ) ;
 int minor (int ) ;
 int panic (char*,...) ;
 struct session* proc_session (struct proc*) ;
 int session_lock (struct session*) ;
 int session_rele (struct session*) ;
 int session_unlock (struct session*) ;
 int spec_fsync_internal (struct vnode*,int ,int ) ;
 int stub1 (int ,int,int ,struct proc*) ;
 int stub2 (int ,int,int ,struct proc*) ;
 int tty_lock (struct tty*) ;
 int tty_unlock (struct tty*) ;
 int ttyclrpgrphup (struct tty*) ;
 int ttyfree (struct tty*) ;
 int vcount (struct vnode*) ;
 struct proc* vfs_context_proc (int ) ;

int
spec_close(struct vnop_close_args *ap)
{
 struct vnode *vp = ap->a_vp;
 dev_t dev = vp->v_rdev;
 int error = 0;
 int flags = ap->a_fflag;
 struct proc *p = vfs_context_proc(ap->a_context);
 struct session *sessp;

 switch (vp->v_type) {

 case 128:
  sessp = proc_session(p);
  devsw_lock(dev, S_IFCHR);
  if (sessp != SESSION_NULL) {
   if (vp == sessp->s_ttyvp && vcount(vp) == 1) {
    struct tty *tp = TTY_NULL;

    devsw_unlock(dev, S_IFCHR);
    session_lock(sessp);
    if (vp == sessp->s_ttyvp) {
     tp = SESSION_TP(sessp);
     sessp->s_ttyvp = ((void*)0);
     sessp->s_ttyvid = 0;
     sessp->s_ttyp = TTY_NULL;
     sessp->s_ttypgrpid = NO_PID;
    }
    session_unlock(sessp);

    if (tp != TTY_NULL) {





     tty_lock(tp);
     ttyclrpgrphup(tp);
     tty_unlock(tp);

     ttyfree(tp);
    }
    devsw_lock(dev, S_IFCHR);
   }
   session_rele(sessp);
  }

  if (--vp->v_specinfo->si_opencount < 0)
   panic("negative open count (c, %u, %u)", major(dev), minor(dev));




  if (vcount(vp) == 0 || (flags & IO_REVOKE) != 0)
   error = cdevsw[major(dev)].d_close(dev, flags, S_IFCHR, p);

  devsw_unlock(dev, S_IFCHR);
  break;

 case 129:




  devsw_lock(dev, S_IFBLK);
  if (vcount(vp) > 1) {
   vp->v_specinfo->si_opencount--;
   devsw_unlock(dev, S_IFBLK);
   return (0);
  }
  devsw_unlock(dev, S_IFBLK);






         if ((error = spec_fsync_internal(vp, MNT_WAIT, ap->a_context)))
          return (error);

  error = buf_invalidateblks(vp, BUF_WRITE_DATA, 0, 0);
  if (error)
   return (error);

  devsw_lock(dev, S_IFBLK);

  if (--vp->v_specinfo->si_opencount < 0)
   panic("negative open count (b, %u, %u)", major(dev), minor(dev));

  if (vcount(vp) == 0)
   error = bdevsw[major(dev)].d_close(dev, flags, S_IFBLK, p);

  devsw_unlock(dev, S_IFBLK);
  break;

 default:
  panic("spec_close: not special");
  return(EBADF);
 }

 return error;
}

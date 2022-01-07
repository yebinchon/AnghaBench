
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_1__ ;


typedef TYPE_1__* vnode_t ;
typedef int vfs_context_t ;
struct mount {int dummy; } ;
typedef int off_t ;
struct TYPE_23__ {int v_usecount; int v_lflag; scalar_t__ v_tag; scalar_t__ v_parent; int v_flag; int * v_data; int v_op; int v_mount; scalar_t__ v_resolve; } ;


 int BUF_INVALIDATE_LOCKED ;
 int BUF_WRITE_DATA ;
 int DOCLOSE ;
 int IO_NDELAY ;
 int IO_REVOKE ;
 int MNT_WAIT ;
 scalar_t__ NULLVP ;
 int OSAddAtomicLong (int,int *) ;
 int REVOKEALL ;
 scalar_t__ UBCINFOEXISTS (TYPE_1__*) ;
 int UBC_INVALIDATE ;
 int UBC_PUSHALL ;
 int UBC_SYNC ;
 int VISDIRTY ;
 int VL_DEAD ;
 int VL_HASSTREAMS ;
 int VL_NEEDINACTIVE ;
 int VL_TERMINATE ;
 int VL_TERMWANT ;
 int VNODE_UPDATE_NAME ;
 int VNODE_UPDATE_PARENT ;
 int VNODE_UPDATE_PURGE ;
 int VNOP_CLOSE (TYPE_1__*,int,int ) ;
 int VNOP_FSYNC (TYPE_1__*,int ,int ) ;
 int VNOP_INACTIVE (TYPE_1__*,int ) ;
 scalar_t__ VNOP_RECLAIM (TYPE_1__*,int ) ;
 scalar_t__ VT_NFS ;
 scalar_t__ VT_NON ;
 int V_SAVE ;
 int buf_invalidateblks (TYPE_1__*,int,int ,int ) ;
 int dead_mountp ;
 int dead_vnodeop_p ;
 int insmntque (TYPE_1__*,struct mount*) ;
 int nfs_vinvalbuf (TYPE_1__*,int ,int ,int ) ;
 int num_recycledvnodes ;
 int panic (char*) ;
 int ubc_destroy_named (TYPE_1__*) ;
 int ubc_getsize (TYPE_1__*) ;
 int ubc_msync (TYPE_1__*,int ,int ,int *,int) ;
 scalar_t__ vfs_authopaque (int ) ;
 int vfs_context_current () ;
 int vnode_isnamedstream (TYPE_1__*) ;
 scalar_t__ vnode_isshadow (TYPE_1__*) ;
 int vnode_lock (TYPE_1__*) ;
 int vnode_lock_spin (TYPE_1__*) ;
 int vnode_relenamedstream (TYPE_1__*,TYPE_1__*) ;
 int vnode_resolver_detach (TYPE_1__*) ;
 int vnode_unlock (TYPE_1__*) ;
 int vnode_update_identity (TYPE_1__*,scalar_t__,int *,int ,int ,int) ;
 int wakeup (int*) ;

__attribute__((used)) static void
vclean(vnode_t vp, int flags)
{
 vfs_context_t ctx = vfs_context_current();
 int active;
 int need_inactive;
 int already_terminating;
 int clflags = 0;
 active = vp->v_usecount;





 need_inactive = (vp->v_lflag & VL_NEEDINACTIVE);

 vp->v_lflag &= ~VL_NEEDINACTIVE;





 already_terminating = (vp->v_lflag & VL_TERMINATE);

 vp->v_lflag |= VL_TERMINATE;





 vnode_unlock(vp);

 OSAddAtomicLong(1, &num_recycledvnodes);

 if (flags & DOCLOSE)
  clflags |= IO_NDELAY;
 if (flags & REVOKEALL)
  clflags |= IO_REVOKE;

 if (active && (flags & DOCLOSE))
  VNOP_CLOSE(vp, clflags, ctx);




 if (flags & DOCLOSE) {





  {
   VNOP_FSYNC(vp, MNT_WAIT, ctx);
   buf_invalidateblks(vp, BUF_WRITE_DATA | (active ? 0 : BUF_INVALIDATE_LOCKED), 0, 0);
  }
  if (UBCINFOEXISTS(vp))



          (void)ubc_msync(vp, (off_t)0, ubc_getsize(vp), ((void*)0), UBC_PUSHALL | UBC_INVALIDATE | UBC_SYNC);
 }
 if (active || need_inactive)
  VNOP_INACTIVE(vp, ctx);
 ubc_destroy_named(vp);
 if (VNOP_RECLAIM(vp, ctx))
  panic("vclean: cannot reclaim");


 vnode_update_identity(vp, NULLVP, ((void*)0), 0, 0, VNODE_UPDATE_PARENT | VNODE_UPDATE_NAME | VNODE_UPDATE_PURGE);

 vnode_lock(vp);







 insmntque(vp, (struct mount *)0);

 vp->v_mount = dead_mountp;
 vp->v_op = dead_vnodeop_p;
 vp->v_tag = VT_NON;
 vp->v_data = ((void*)0);

 vp->v_lflag |= VL_DEAD;
 vp->v_flag &= ~VISDIRTY;

 if (already_terminating == 0) {
         vp->v_lflag &= ~VL_TERMINATE;



  if (vp->v_lflag & VL_TERMWANT) {
          vp->v_lflag &= ~VL_TERMWANT;
   wakeup(&vp->v_lflag);
  }
 }
}

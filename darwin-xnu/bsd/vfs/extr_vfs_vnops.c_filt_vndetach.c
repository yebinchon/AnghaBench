
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vfs_context_t ;
struct vnode {int v_knotes; } ;
struct knote {int kn_hookid; scalar_t__ kn_hook; } ;


 int KNOTE_DETACH (int *,struct knote*) ;
 int VNODE_MONITOR_END ;
 int VNOP_MONITOR (struct vnode*,int ,int ,void*,int ) ;
 int vfs_context_current () ;
 scalar_t__ vnode_getwithvid (struct vnode*,int ) ;
 int vnode_lock (struct vnode*) ;
 int vnode_put (struct vnode*) ;
 int vnode_unlock (struct vnode*) ;

__attribute__((used)) static void
filt_vndetach(struct knote *kn)
{
 vfs_context_t ctx = vfs_context_current();
 struct vnode *vp;
 vp = (struct vnode *)kn->kn_hook;
 if (vnode_getwithvid(vp, kn->kn_hookid))
  return;

 vnode_lock(vp);
 KNOTE_DETACH(&vp->v_knotes, kn);
 vnode_unlock(vp);






 VNOP_MONITOR(vp, 0, VNODE_MONITOR_END, (void*)kn, ctx);
 vnode_put(vp);
}

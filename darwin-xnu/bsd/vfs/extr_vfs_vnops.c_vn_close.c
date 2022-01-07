
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vfs_context_t ;
struct vnode {int v_flag; scalar_t__ v_parent; scalar_t__ v_tag; int v_writecount; } ;


 int FSE_ARG_DONE ;
 int FSE_ARG_VNODE ;
 int FSE_CONTENT_MODIFIED ;
 int FWASWRITTEN ;
 int FWRITE ;
 int MNT_NOWAIT ;
 scalar_t__ NULLVP ;
 int VISNAMEDSTREAM ;
 int VNOP_CLOSE (struct vnode*,int,int ) ;
 int VNOP_FSYNC (struct vnode*,int ,int ) ;
 scalar_t__ VT_HFS ;
 int add_fsevent (int ,int ,int ,struct vnode*,int ) ;
 scalar_t__ need_fsevent (int ,struct vnode*) ;
 int vnode_flushnamedstream (scalar_t__,struct vnode*,int ) ;
 scalar_t__ vnode_isshadow (struct vnode*) ;
 scalar_t__ vnode_isspec (struct vnode*) ;
 int vnode_rele_ext (struct vnode*,int,int ) ;

int
vn_close(struct vnode *vp, int flags, vfs_context_t ctx)
{
 int error;
 int flusherror = 0;
 if (vnode_isspec(vp))
  (void)vnode_rele_ext(vp, flags, 0);
 if (vp->v_tag == VT_HFS && (flags & FWRITE) && vp->v_writecount == 1)
  VNOP_FSYNC(vp, MNT_NOWAIT, ctx);

 error = VNOP_CLOSE(vp, flags, ctx);
 if (!vnode_isspec(vp))
  (void)vnode_rele_ext(vp, flags, 0);

 if (flusherror) {
  error = flusherror;
 }
 return (error);
}

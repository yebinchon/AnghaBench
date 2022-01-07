
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vfs_context_t ;
struct vnode {int dummy; } ;
typedef int kauth_filesec_t ;


 int KAUTH_VNODE_READ_ATTRIBUTES ;
 int KAUTH_VNODE_READ_SECURITY ;
 int NOCRED ;
 int mac_vnode_check_stat (int ,int ,struct vnode*) ;
 int vn_stat_noauth (struct vnode*,void*,int *,int,int ,int ) ;
 int vnode_authorize (struct vnode*,int *,int,int ) ;

int
vn_stat(struct vnode *vp, void *sb, kauth_filesec_t *xsec, int isstat64, vfs_context_t ctx)
{
 int error;
 if ((error = vnode_authorize(vp, ((void*)0), KAUTH_VNODE_READ_ATTRIBUTES | KAUTH_VNODE_READ_SECURITY, ctx)) != 0)
  return(error);


 return(vn_stat_noauth(vp, sb, xsec, isstat64, ctx, NOCRED));
}

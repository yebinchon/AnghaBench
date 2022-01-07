
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vfs_context_t ;
struct vnode {int v_mount; } ;


 int EROFS ;
 int FSE_ARG_DONE ;
 int FSE_ARG_VNODE ;
 int FSE_XATTR_REMOVED ;
 int XATTR_NOSECURITY ;
 int add_fsevent (int ,int ,int ,struct vnode*,int ) ;
 int vfs_context_current () ;
 scalar_t__ vfs_isrdonly (int ) ;
 int vn_removexattr (struct vnode*,char const*,int,int ) ;

int
mac_vnop_removexattr (struct vnode *vp, const char *name)
{
 vfs_context_t ctx = vfs_context_current();
 int options = XATTR_NOSECURITY;
 int error;

 if (vfs_isrdonly(vp->v_mount))
  return (EROFS);

 error = vn_removexattr(vp, name, options, ctx);
 return (error);
}

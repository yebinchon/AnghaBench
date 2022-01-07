
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ vnode_t ;
typedef int vfs_context_t ;
struct vnode_attr {scalar_t__ va_parentid; } ;
typedef TYPE_1__* mount_t ;
typedef int ino64_t ;
struct TYPE_4__ {int mnt_kern_flag; } ;


 int ENOENT ;
 int MNTK_PATH_FROM_ID ;
 int VATTR_INIT (struct vnode_attr*) ;
 int VATTR_IS_SUPPORTED (struct vnode_attr*,int ) ;
 int VATTR_WANTED (struct vnode_attr*,int ) ;
 int VFS_VGET (TYPE_1__*,int ,scalar_t__*,int ) ;
 int va_parentid ;
 int vnode_get (scalar_t__) ;
 int vnode_getattr (scalar_t__,struct vnode_attr*,int ) ;
 TYPE_1__* vnode_mount (scalar_t__) ;
 scalar_t__ vnode_parent (scalar_t__) ;

__attribute__((used)) static int
null_get_lowerparent(vnode_t lvp, vnode_t * dvpp, vfs_context_t ctx)
{
 int error = 0;
 struct vnode_attr va;
 mount_t mp = vnode_mount(lvp);
 vnode_t dvp = vnode_parent(lvp);

 if (dvp) {
  error = vnode_get(dvp);
  goto end;
 }

 error = ENOENT;
 if (!(mp->mnt_kern_flag & MNTK_PATH_FROM_ID)) {
  goto end;
 }

 VATTR_INIT(&va);
 VATTR_WANTED(&va, va_parentid);

 error = vnode_getattr(lvp, &va, ctx);

 if (error || !VATTR_IS_SUPPORTED(&va, va_parentid)) {
  goto end;
 }

 error = VFS_VGET(mp, (ino64_t)va.va_parentid, &dvp, ctx);

end:
 if (error == 0) {
  *dvpp = dvp;
 }
 return error;
}

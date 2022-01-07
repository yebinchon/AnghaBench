
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;
typedef int vfs_context_t ;
struct timespec {int dummy; } ;
struct vnode_attr {struct timespec va_modify_time; } ;
typedef int errno_t ;


 int VATTR_INIT (struct vnode_attr*) ;
 int VATTR_WANTED (struct vnode_attr*,int ) ;
 int va_modify_time ;
 int vnode_getattr (int ,struct vnode_attr*,int ) ;

errno_t
vnode_mtime(vnode_t vp, struct timespec *mtime, vfs_context_t ctx)
{
 struct vnode_attr va;
 int error;

 VATTR_INIT(&va);
 VATTR_WANTED(&va, va_modify_time);
 error = vnode_getattr(vp, &va, ctx);
 if (!error)
  *mtime = va.va_modify_time;
 return error;
}

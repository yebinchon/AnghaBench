
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;
typedef int vfs_context_t ;
typedef int uint32_t ;
struct vnode_attr {int va_flags; } ;
typedef int errno_t ;


 int VATTR_INIT (struct vnode_attr*) ;
 int VATTR_WANTED (struct vnode_attr*,int ) ;
 int va_flags ;
 int vnode_getattr (int ,struct vnode_attr*,int ) ;

errno_t
vnode_flags(vnode_t vp, uint32_t *flags, vfs_context_t ctx)
{
 struct vnode_attr va;
 int error;

 VATTR_INIT(&va);
 VATTR_WANTED(&va, va_flags);
 error = vnode_getattr(vp, &va, ctx);
 if (!error)
  *flags = va.va_flags;
 return error;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;
typedef int vfs_context_t ;
struct vnode_attr {int va_vaflags; } ;
typedef int off_t ;
typedef int errno_t ;


 int VATTR_INIT (struct vnode_attr*) ;
 int VATTR_SET (struct vnode_attr*,int ,int ) ;
 int va_data_size ;
 int vnode_setattr (int ,struct vnode_attr*,int ) ;

errno_t
vnode_setsize(vnode_t vp, off_t size, int ioflag, vfs_context_t ctx)
{
 struct vnode_attr va;

 VATTR_INIT(&va);
 VATTR_SET(&va, va_data_size, size);
 va.va_vaflags = ioflag & 0xffff;
 return(vnode_setattr(vp, &va, ctx));
}

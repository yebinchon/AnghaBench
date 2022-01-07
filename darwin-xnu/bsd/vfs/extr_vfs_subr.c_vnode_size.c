
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;
typedef int vfs_context_t ;
struct vnode_attr {int va_data_size; } ;
typedef int off_t ;
typedef int errno_t ;


 int VATTR_INIT (struct vnode_attr*) ;
 int VATTR_WANTED (struct vnode_attr*,int ) ;
 int va_data_size ;
 int vnode_getattr (int ,struct vnode_attr*,int ) ;

errno_t
vnode_size(vnode_t vp, off_t *sizep, vfs_context_t ctx)
{
 struct vnode_attr va;
 int error;

 VATTR_INIT(&va);
 VATTR_WANTED(&va, va_data_size);
 error = vnode_getattr(vp, &va, ctx);
 if (!error)
  *sizep = va.va_data_size;
 return(error);
}

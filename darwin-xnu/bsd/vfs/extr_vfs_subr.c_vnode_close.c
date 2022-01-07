
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;
typedef int * vfs_context_t ;
typedef int errno_t ;


 int * vfs_context_current () ;
 int vn_close (int ,int,int *) ;
 int vnode_put (int ) ;

errno_t
vnode_close(vnode_t vp, int flags, vfs_context_t ctx)
{
 int error;

 if (ctx == ((void*)0)) {
  ctx = vfs_context_current();
 }

 error = vn_close(vp, flags, ctx);
 vnode_put(vp);
 return (error);
}

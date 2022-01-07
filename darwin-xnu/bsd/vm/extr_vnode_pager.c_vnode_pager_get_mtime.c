
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct timespec {int dummy; } ;
typedef int kern_return_t ;


 int KERN_SUCCESS ;
 int ubc_get_cs_mtime (struct vnode*,struct timespec*) ;
 int vfs_context_current () ;
 int vnode_mtime (struct vnode*,struct timespec*,int ) ;

kern_return_t
vnode_pager_get_mtime(
 struct vnode *vp,
 struct timespec *current_mtime,
 struct timespec *cs_mtime)
{
 vnode_mtime(vp, current_mtime, vfs_context_current());
 if (cs_mtime != ((void*)0)) {
  ubc_get_cs_mtime(vp, cs_mtime);
 }
 return KERN_SUCCESS;
}

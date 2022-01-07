
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef struct vnode* vnode_t ;
struct vnode {int dummy; } ;
typedef TYPE_2__* proc_t ;
struct TYPE_5__ {TYPE_1__* p_fd; } ;
struct TYPE_4__ {struct vnode* fd_rdir; } ;


 TYPE_2__* current_proc () ;
 scalar_t__ vnode_getwithref (struct vnode*) ;

vnode_t
current_rootdir(void)
{
 proc_t proc = current_proc();
 struct vnode * vp ;

 if ( (vp = proc->p_fd->fd_rdir) ) {
         if ( (vnode_getwithref(vp)) )
          return (((void*)0));
 }
 return vp;
}

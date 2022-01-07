
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vnode_t ;
typedef TYPE_2__* vfs_context_t ;
typedef TYPE_3__* uthread_t ;
typedef TYPE_4__* proc_t ;
struct TYPE_10__ {TYPE_1__* p_fd; } ;
struct TYPE_9__ {int uu_cdir; } ;
struct TYPE_8__ {int * vc_thread; } ;
struct TYPE_7__ {int fd_cdir; } ;


 int NULLVP ;
 TYPE_3__* get_bsdthread_info (int *) ;
 scalar_t__ get_bsdthreadtask_info (int *) ;

vnode_t
vfs_context_cwd(vfs_context_t ctx)
{
 vnode_t cwd = NULLVP;

 if(ctx != ((void*)0) && ctx->vc_thread != ((void*)0)) {
  uthread_t uth = get_bsdthread_info(ctx->vc_thread);
  proc_t proc;





  if ((cwd = uth->uu_cdir) == NULLVP &&
      (proc = (proc_t)get_bsdthreadtask_info(ctx->vc_thread)) != ((void*)0) &&
      proc->p_fd != ((void*)0))
   cwd = proc->p_fd->fd_cdir;
 }

 return(cwd);
}

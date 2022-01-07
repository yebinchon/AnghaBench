
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* vfs_context_t ;
typedef TYPE_2__* proc_t ;
struct TYPE_7__ {int p_lflag; int * p_fd; } ;
struct TYPE_6__ {int * vc_thread; } ;


 int P_LVFORK ;
 TYPE_2__* current_proc () ;
 scalar_t__ get_bsdthreadtask_info (int *) ;

proc_t
vfs_context_proc(vfs_context_t ctx)
{
 proc_t proc = ((void*)0);

 if (ctx != ((void*)0) && ctx->vc_thread != ((void*)0))
  proc = (proc_t)get_bsdthreadtask_info(ctx->vc_thread);
 if (proc != ((void*)0) && (proc->p_fd == ((void*)0) || (proc->p_lflag & P_LVFORK)))
  proc = ((void*)0);

 return(proc == ((void*)0) ? current_proc() : proc);
}

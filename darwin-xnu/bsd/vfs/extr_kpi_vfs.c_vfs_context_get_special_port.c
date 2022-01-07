
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* vfs_context_t ;
typedef int * task_t ;
typedef int kern_return_t ;
typedef int ipc_port_t ;
struct TYPE_3__ {int * vc_thread; } ;


 int * get_threadtask (int *) ;
 int task_get_special_port (int *,int,int *) ;

kern_return_t
vfs_context_get_special_port(vfs_context_t ctx, int which, ipc_port_t *portp)
{
 task_t task = ((void*)0);

 if (ctx != ((void*)0) && ctx->vc_thread != ((void*)0))
  task = get_threadtask(ctx->vc_thread);

 return task_get_special_port(task, which, portp);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* vfs_context_t ;
typedef int thread_t ;
struct TYPE_3__ {int vc_thread; } ;



thread_t
vfs_context_thread(vfs_context_t ctx)
{
 return(ctx->vc_thread);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* vfs_context_t ;
struct TYPE_3__ {int vc_thread; } ;


 int current_thread () ;

int
vfs_context_bind(vfs_context_t ctx)
{
 ctx->vc_thread = current_thread();
 return 0;
}

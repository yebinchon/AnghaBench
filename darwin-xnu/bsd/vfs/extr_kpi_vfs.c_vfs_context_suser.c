
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* vfs_context_t ;
struct TYPE_3__ {int vc_ucred; } ;


 int suser (int ,int *) ;

int
vfs_context_suser(vfs_context_t ctx)
{
 return (suser(ctx->vc_ucred, ((void*)0)));
}

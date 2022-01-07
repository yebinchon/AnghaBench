
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* vfs_context_t ;
struct vfs_context {int dummy; } ;
struct TYPE_4__ {int vc_ucred; } ;


 scalar_t__ IS_VALID_CRED (int ) ;
 int kauth_cred_unref (int *) ;
 int kfree (TYPE_1__*,int) ;

int
vfs_context_rele(vfs_context_t ctx)
{
 if (ctx) {
  if (IS_VALID_CRED(ctx->vc_ucred))
   kauth_cred_unref(&ctx->vc_ucred);
  kfree(ctx, sizeof(struct vfs_context));
 }
 return(0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* vfs_context_t ;
struct vfs_context {int dummy; } ;
typedef int kauth_cred_t ;
struct TYPE_4__ {int vc_ucred; int vc_thread; } ;


 scalar_t__ IS_VALID_CRED (int ) ;
 int current_thread () ;
 scalar_t__ kalloc (int) ;
 int kauth_cred_get () ;
 int kauth_cred_ref (int ) ;

vfs_context_t
vfs_context_create(vfs_context_t ctx)
{
 vfs_context_t newcontext;

 newcontext = (vfs_context_t)kalloc(sizeof(struct vfs_context));

 if (newcontext) {
  kauth_cred_t safecred;
  if (ctx) {
   newcontext->vc_thread = ctx->vc_thread;
   safecred = ctx->vc_ucred;
  } else {
   newcontext->vc_thread = current_thread();
   safecred = kauth_cred_get();
  }
  if (IS_VALID_CRED(safecred))
   kauth_cred_ref(safecred);
  newcontext->vc_ucred = safecred;
  return(newcontext);
 }
 return(((void*)0));
}

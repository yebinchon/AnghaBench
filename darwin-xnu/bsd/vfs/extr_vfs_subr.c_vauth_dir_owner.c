
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* vauth_ctx ;
struct TYPE_5__ {int flags_valid; int flags; TYPE_1__* ctx; int dvap; } ;
struct TYPE_4__ {int vc_ucred; } ;


 int _VAC_IS_DIR_OWNER ;
 int vauth_node_owner (int ,int ) ;

__attribute__((used)) static int
vauth_dir_owner(vauth_ctx vcp)
{
 int result;

 if (vcp->flags_valid & _VAC_IS_DIR_OWNER) {
  result = (vcp->flags & _VAC_IS_DIR_OWNER) ? 1 : 0;
 } else {
  result = vauth_node_owner(vcp->dvap, vcp->ctx->vc_ucred);


  vcp->flags_valid |= _VAC_IS_DIR_OWNER;
  if (result) {
   vcp->flags |= _VAC_IS_DIR_OWNER;
  } else {
   vcp->flags &= ~_VAC_IS_DIR_OWNER;
  }
 }
 return(result);
}

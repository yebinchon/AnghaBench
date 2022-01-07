
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* vauth_ctx ;
struct TYPE_5__ {int flags_valid; int flags; TYPE_1__* ctx; int dvap; } ;
struct TYPE_4__ {int vc_ucred; } ;


 int _VAC_IN_DIR_GROUP ;
 int vauth_node_group (int ,int ,int*,int) ;

__attribute__((used)) static int
vauth_dir_ingroup(vauth_ctx vcp, int *ismember, int idontknow)
{
 int error;


 if (vcp->flags_valid & _VAC_IN_DIR_GROUP) {
  *ismember = (vcp->flags & _VAC_IN_DIR_GROUP) ? 1 : 0;
  error = 0;
 } else {

  error = vauth_node_group(vcp->dvap, vcp->ctx->vc_ucred, ismember, idontknow);

  if (!error) {

   vcp->flags_valid |= _VAC_IN_DIR_GROUP;
   if (*ismember) {
    vcp->flags |= _VAC_IN_DIR_GROUP;
   } else {
    vcp->flags &= ~_VAC_IN_DIR_GROUP;
   }
  }
 }
 return(error);
}

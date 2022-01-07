
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* vnode_t ;
typedef scalar_t__ vfs_context_t ;
typedef int kauth_action_t ;
struct TYPE_4__ {scalar_t__ v_type; } ;


 int EACCES ;
 int EPERM ;
 scalar_t__ VBAD ;
 int kauth_authorize_action (int ,int ,int ,uintptr_t,uintptr_t,uintptr_t,uintptr_t) ;
 int vfs_context_ucred (scalar_t__) ;
 int vnode_scope ;

int
vnode_authorize(vnode_t vp, vnode_t dvp, kauth_action_t action, vfs_context_t ctx)
{
 int error, result;





 if (vp->v_type == VBAD)
  return(0);

 error = 0;
 result = kauth_authorize_action(vnode_scope, vfs_context_ucred(ctx), action,
     (uintptr_t)ctx, (uintptr_t)vp, (uintptr_t)dvp, (uintptr_t)&error);
 if (result == EPERM)
  result = EACCES;

 if ((result != 0) && (error != 0))
         return(error);
 return(result);
}

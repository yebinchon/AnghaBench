
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_3__* vauth_ctx ;
struct vnode_attr {TYPE_2__* va_acl; } ;
struct kauth_acl_eval {int ae_requested; int ae_result; int ae_residual; int ae_found_deny; int ae_exp_gexec; int ae_exp_gwrite; int ae_exp_gread; int ae_exp_gall; int ae_options; int ae_count; int * ae_acl; } ;
typedef int mode_t ;
typedef int kauth_cred_t ;
typedef int kauth_ace_rights_t ;
typedef int boolean_t ;
struct TYPE_10__ {int vp; TYPE_1__* ctx; struct vnode_attr* vap; } ;
struct TYPE_9__ {int acl_entrycount; int * acl_ace; } ;
struct TYPE_8__ {int vc_ucred; } ;


 int EACCES ;
 int ENOENT ;
 int KAUTH_AEVAL_IN_GROUP ;
 int KAUTH_AEVAL_IN_GROUP_UNKNOWN ;
 int KAUTH_AEVAL_IS_OWNER ;
 int KAUTH_DEBUG (char*,int ,...) ;



 int KAUTH_VNODE_ADD_FILE ;
 int KAUTH_VNODE_ADD_SUBDIRECTORY ;
 int KAUTH_VNODE_APPEND_DATA ;
 int KAUTH_VNODE_CHANGE_OWNER ;
 int KAUTH_VNODE_CHECKIMMUTABLE ;
 int KAUTH_VNODE_DELETE ;
 int KAUTH_VNODE_DELETE_CHILD ;
 int KAUTH_VNODE_EXECUTE ;
 int KAUTH_VNODE_GENERIC_ALL_BITS ;
 int KAUTH_VNODE_GENERIC_EXECUTE_BITS ;
 int KAUTH_VNODE_GENERIC_READ_BITS ;
 int KAUTH_VNODE_GENERIC_WRITE_BITS ;
 int KAUTH_VNODE_LIST_DIRECTORY ;
 int KAUTH_VNODE_READ_ATTRIBUTES ;
 int KAUTH_VNODE_READ_DATA ;
 int KAUTH_VNODE_READ_EXTATTRIBUTES ;
 int KAUTH_VNODE_READ_SECURITY ;
 int KAUTH_VNODE_SEARCH ;
 int KAUTH_VNODE_TAKE_OWNERSHIP ;
 int KAUTH_VNODE_WRITE_ATTRIBUTES ;
 int KAUTH_VNODE_WRITE_DATA ;
 int KAUTH_VNODE_WRITE_EXTATTRIBUTES ;
 int KAUTH_VNODE_WRITE_SECURITY ;
 scalar_t__ VATTR_IS_NOT (struct vnode_attr*,int ,int *) ;
 int VEXEC ;
 int VREAD ;
 int VWRITE ;
 int kauth_acl_evaluate (int ,struct kauth_acl_eval*) ;
 int panic (char*) ;
 int va_acl ;
 int vauth_file_ingroup (TYPE_3__*,int*,int) ;
 scalar_t__ vauth_file_owner (TYPE_3__*) ;
 int vnode_authorize_posix (TYPE_3__*,int ,int ) ;
 scalar_t__ vnode_isdir (int ) ;

__attribute__((used)) static int
vnode_authorize_simple(vauth_ctx vcp, kauth_ace_rights_t acl_rights, kauth_ace_rights_t preauth_rights, boolean_t *found_deny)
{
 struct vnode_attr *vap = vcp->vap;
 kauth_cred_t cred = vcp->ctx->vc_ucred;
 struct kauth_acl_eval eval;
 int error, ismember;
 mode_t posix_action;






 if (vauth_file_owner(vcp))
  acl_rights &= ~(KAUTH_VNODE_WRITE_SECURITY);
 if ((acl_rights & KAUTH_VNODE_TAKE_OWNERSHIP) &&
     (acl_rights & KAUTH_VNODE_WRITE_SECURITY))
  acl_rights &= ~KAUTH_VNODE_WRITE_SECURITY;

 if (acl_rights == 0) {
  KAUTH_DEBUG("%p    ALLOWED - implicit or no rights required", vcp->vp);
  return(0);
 }


 if (VATTR_IS_NOT(vap, va_acl, ((void*)0))) {
  eval.ae_requested = acl_rights;
  eval.ae_acl = &vap->va_acl->acl_ace[0];
  eval.ae_count = vap->va_acl->acl_entrycount;
  eval.ae_options = 0;
  if (vauth_file_owner(vcp))
   eval.ae_options |= KAUTH_AEVAL_IS_OWNER;






  if ((error = vauth_file_ingroup(vcp, &ismember, ENOENT)) != 0 && error != ENOENT)
   return(error);
  if (error == ENOENT)
   eval.ae_options |= KAUTH_AEVAL_IN_GROUP_UNKNOWN;
  else if (ismember)
   eval.ae_options |= KAUTH_AEVAL_IN_GROUP;
  eval.ae_exp_gall = KAUTH_VNODE_GENERIC_ALL_BITS;
  eval.ae_exp_gread = KAUTH_VNODE_GENERIC_READ_BITS;
  eval.ae_exp_gwrite = KAUTH_VNODE_GENERIC_WRITE_BITS;
  eval.ae_exp_gexec = KAUTH_VNODE_GENERIC_EXECUTE_BITS;

  if ((error = kauth_acl_evaluate(cred, &eval)) != 0) {
   KAUTH_DEBUG("%p    ERROR during ACL processing - %d", vcp->vp, error);
   return(error);
  }

  switch(eval.ae_result) {
  case 128:
   KAUTH_DEBUG("%p    DENIED - by ACL", vcp->vp);
   return(EACCES);
  case 130:
   KAUTH_DEBUG("%p    ALLOWED - all rights granted by ACL", vcp->vp);
   return(0);
  case 129:
  default:

   KAUTH_DEBUG("%p    DEFERRED - directory ACL", vcp->vp);
   break;
  }

  *found_deny = eval.ae_found_deny;


 } else {

  eval.ae_residual = acl_rights;
 }




 eval.ae_residual &= ~preauth_rights;




 if (vauth_file_owner(vcp))
  eval.ae_residual &= ~KAUTH_VNODE_WRITE_ATTRIBUTES;

 if (eval.ae_residual == 0) {
  KAUTH_DEBUG("%p    ALLOWED - rights already authorized", vcp->vp);
  return(0);
 }







 if (eval.ae_residual & KAUTH_VNODE_CHANGE_OWNER) {
  KAUTH_DEBUG("%p    DENIED - CHANGE_OWNER not permitted", vcp->vp);
  return(EACCES);
 }
 if (eval.ae_residual & KAUTH_VNODE_WRITE_SECURITY) {
  KAUTH_DEBUG("%p    DENIED - WRITE_SECURITY not permitted", vcp->vp);
  return(EACCES);
 }
 posix_action = 0;
 if (eval.ae_residual & (KAUTH_VNODE_READ_DATA |
  KAUTH_VNODE_LIST_DIRECTORY |
  KAUTH_VNODE_READ_EXTATTRIBUTES))
  posix_action |= VREAD;
 if (eval.ae_residual & (KAUTH_VNODE_WRITE_DATA |
  KAUTH_VNODE_ADD_FILE |
  KAUTH_VNODE_ADD_SUBDIRECTORY |
  KAUTH_VNODE_DELETE_CHILD |
  KAUTH_VNODE_WRITE_ATTRIBUTES |
  KAUTH_VNODE_WRITE_EXTATTRIBUTES))
  posix_action |= VWRITE;
 if (eval.ae_residual & (KAUTH_VNODE_EXECUTE |
  KAUTH_VNODE_SEARCH))
  posix_action |= VEXEC;

 if (posix_action != 0) {
  return(vnode_authorize_posix(vcp, posix_action, 0 ));
 } else {
  KAUTH_DEBUG("%p    ALLOWED - residual rights %s%s%s%s%s%s%s%s%s%s%s%s%s%s granted due to no posix mapping",
      vcp->vp,
      (eval.ae_residual & KAUTH_VNODE_READ_DATA)
      ? vnode_isdir(vcp->vp) ? " LIST_DIRECTORY" : " READ_DATA" : "",
      (eval.ae_residual & KAUTH_VNODE_WRITE_DATA)
      ? vnode_isdir(vcp->vp) ? " ADD_FILE" : " WRITE_DATA" : "",
      (eval.ae_residual & KAUTH_VNODE_EXECUTE)
      ? vnode_isdir(vcp->vp) ? " SEARCH" : " EXECUTE" : "",
      (eval.ae_residual & KAUTH_VNODE_DELETE)
      ? " DELETE" : "",
      (eval.ae_residual & KAUTH_VNODE_APPEND_DATA)
      ? vnode_isdir(vcp->vp) ? " ADD_SUBDIRECTORY" : " APPEND_DATA" : "",
      (eval.ae_residual & KAUTH_VNODE_DELETE_CHILD)
      ? " DELETE_CHILD" : "",
      (eval.ae_residual & KAUTH_VNODE_READ_ATTRIBUTES)
      ? " READ_ATTRIBUTES" : "",
      (eval.ae_residual & KAUTH_VNODE_WRITE_ATTRIBUTES)
      ? " WRITE_ATTRIBUTES" : "",
      (eval.ae_residual & KAUTH_VNODE_READ_EXTATTRIBUTES)
      ? " READ_EXTATTRIBUTES" : "",
      (eval.ae_residual & KAUTH_VNODE_WRITE_EXTATTRIBUTES)
      ? " WRITE_EXTATTRIBUTES" : "",
      (eval.ae_residual & KAUTH_VNODE_READ_SECURITY)
      ? " READ_SECURITY" : "",
      (eval.ae_residual & KAUTH_VNODE_WRITE_SECURITY)
      ? " WRITE_SECURITY" : "",
      (eval.ae_residual & KAUTH_VNODE_CHECKIMMUTABLE)
      ? " CHECKIMMUTABLE" : "",
      (eval.ae_residual & KAUTH_VNODE_CHANGE_OWNER)
      ? " CHANGE_OWNER" : "");
 }




 return(0);
}

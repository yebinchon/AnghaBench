
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* vnode_t ;
typedef int vfs_context_t ;
typedef int kauth_action_t ;
struct TYPE_7__ {int v_type; int v_mount; } ;


 int ENOTSUP ;
 int FREAD ;
 int KAUTH_DEBUG (char*,TYPE_1__*) ;
 int KAUTH_VNODE_ACCESS ;
 int KAUTH_VNODE_EXECUTE ;



 int VNOP_ACCESS (TYPE_1__*,int,int ) ;
 int VNOP_CLOSE (TYPE_1__*,int ,int ) ;
 int VNOP_OPEN (TYPE_1__*,int ,int ) ;
 int VREG ;

 int vfs_authopaqueaccess (int ) ;

__attribute__((used)) static int
vnode_authorize_opaque(vnode_t vp, int *resultp, kauth_action_t action, vfs_context_t ctx)
{
 int error;





 switch(vp->v_type) {
 case 131:
 case 130:
 case 128:
 case 129:
  return(0);
 default:
  break;
 }





 if ((action & KAUTH_VNODE_ACCESS) && !vfs_authopaqueaccess(vp->v_mount))
  return(0);





 if ((error = VNOP_ACCESS(vp, action, ctx)) != ENOTSUP) {
  *resultp = error;
  KAUTH_DEBUG("%p    DENIED - opaque filesystem VNOP_ACCESS denied access", vp);
  return(1);
 }





 if ((action & KAUTH_VNODE_EXECUTE) && (vp->v_type == VREG)) {

  if ((error = VNOP_OPEN(vp, FREAD, ctx)) != 0) {
   *resultp = error;
   KAUTH_DEBUG("%p    DENIED - EXECUTE denied because file could not be opened readonly", vp);
   return(1);
  }
  VNOP_CLOSE(vp, FREAD, ctx);
 }





 *resultp = 0;
 KAUTH_DEBUG("%p    ALLOWED - bypassing access check for non-local filesystem", vp);
 return(1);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ vnode_t ;
struct TYPE_3__ {int cn_flags; } ;
struct nameidata {int ni_flag; TYPE_1__ ni_cnd; int ni_ncgeneration; } ;


 int ARG_VNODE1 ;
 int ARG_VNODE2 ;
 int AUDITVNPATH1 ;
 int AUDITVNPATH2 ;
 int AUDIT_ARG (int ,scalar_t__,int ) ;
 int EKEEPLOOKING ;
 int MAKEENTRY ;
 int NAMEI_COMPOUND_OP_MASK ;
 scalar_t__ NULLVP ;
 scalar_t__ kdebug_enable ;
 int kdebug_lookup (scalar_t__,TYPE_1__*) ;
 int lookup_consider_update_cache (scalar_t__,scalar_t__,TYPE_1__*,int ) ;
 int panic (char*) ;
 int vnpath ;

void
lookup_compound_vnop_post_hook(int error, vnode_t dvp, vnode_t vp, struct nameidata *ndp, int did_create)
{
 if (error == 0 && vp == NULLVP) {
  panic("NULL vp with error == 0.\n");
 }






 if ((ndp->ni_flag & NAMEI_COMPOUND_OP_MASK) == 0) {
  return;
 }





 if (error == EKEEPLOOKING) {
  return;
 }





 if ((vp != NULLVP) && !did_create) {




  if ((error != 0) || (ndp->ni_cnd.cn_flags & MAKEENTRY)) {
   lookup_consider_update_cache(dvp, vp, &ndp->ni_cnd, ndp->ni_ncgeneration);
  }
  if (ndp->ni_cnd.cn_flags & AUDITVNPATH1)
   AUDIT_ARG(vnpath, vp, ARG_VNODE1);
  else if (ndp->ni_cnd.cn_flags & AUDITVNPATH2)
   AUDIT_ARG(vnpath, vp, ARG_VNODE2);
 }
 if (kdebug_enable) {
         kdebug_lookup(vp ? vp : dvp, &ndp->ni_cnd);
 }
}

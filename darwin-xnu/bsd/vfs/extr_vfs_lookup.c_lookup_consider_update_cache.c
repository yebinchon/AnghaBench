
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* vnode_t ;
struct componentname {int cn_namelen; char* cn_nameptr; int cn_flags; int cn_hash; } ;
struct TYPE_8__ {scalar_t__ v_parent; int v_flag; int v_nc_generation; int v_nclinks; int * v_name; } ;


 int ISDOTDOT ;
 int * LIST_FIRST (int *) ;
 int MAKEENTRY ;
 scalar_t__ NULLVP ;
 int VNCACHEABLE ;
 int VNODE_UPDATE_NAME ;
 int VNODE_UPDATE_PARENT ;
 int cache_enter_with_gen (TYPE_1__*,TYPE_1__*,struct componentname*,int) ;
 int vnode_update_identity (TYPE_1__*,TYPE_1__*,char*,int,int ,int) ;

__attribute__((used)) static void
lookup_consider_update_cache(vnode_t dvp, vnode_t vp, struct componentname *cnp, int nc_generation)
{
 int isdot_or_dotdot;
 isdot_or_dotdot = (cnp->cn_namelen == 1 && cnp->cn_nameptr[0] == '.') || (cnp->cn_flags & ISDOTDOT);

 if (vp->v_name == ((void*)0) || vp->v_parent == NULLVP) {
  int update_flags = 0;

  if (isdot_or_dotdot == 0) {
   if (vp->v_name == ((void*)0))
    update_flags |= VNODE_UPDATE_NAME;
   if (dvp != NULLVP && vp->v_parent == NULLVP)
    update_flags |= VNODE_UPDATE_PARENT;

   if (update_flags)
    vnode_update_identity(vp, dvp, cnp->cn_nameptr, cnp->cn_namelen, cnp->cn_hash, update_flags);
  }
 }
 if ( (cnp->cn_flags & MAKEENTRY) && (vp->v_flag & VNCACHEABLE) && LIST_FIRST(&vp->v_nclinks) == ((void*)0)) {
  if (dvp != NULLVP && (nc_generation == dvp->v_nc_generation) && (!isdot_or_dotdot))
   cache_enter_with_gen(dvp, vp, cnp, nc_generation);
 }

}

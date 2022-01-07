
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


typedef TYPE_1__* vnode_t ;
typedef int uint32_t ;
struct uthread {int uu_defer_reclaims; TYPE_1__* uu_vreclaims; } ;
struct namecache {int dummy; } ;
typedef int * kauth_cred_t ;
struct TYPE_12__ {int v_flag; scalar_t__ v_type; scalar_t__ v_kusecount; char const* v_name; int v_iocount; scalar_t__ v_usecount; int v_lflag; struct TYPE_12__* v_defer_reclaimlist; struct TYPE_12__* v_parent; int v_nclinks; scalar_t__ v_cred_timestamp; scalar_t__ v_authorized_actions; int * v_cred; int v_ncchildren; int v_nc_generation; } ;


 scalar_t__ IS_VALID_CRED (int *) ;
 struct namecache* LIST_FIRST (int *) ;
 int NAME_CACHE_LOCK () ;
 int NAME_CACHE_UNLOCK () ;
 int * NOCRED ;
 TYPE_1__* NULLVP ;
 struct namecache* TAILQ_FIRST (int *) ;
 scalar_t__ VDIR ;
 int VISNAMEDSTREAM ;
 int VL_DEAD ;
 int VL_MARKTERM ;
 int VL_TERMINATE ;
 int VNODE_UPDATE_CACHE ;
 int VNODE_UPDATE_NAME ;
 int VNODE_UPDATE_PARENT ;
 int VNODE_UPDATE_PURGE ;
 scalar_t__ VREG ;
 int cache_delete (struct namecache*,int) ;
 int current_thread () ;
 struct uthread* get_bsdthread_info (int ) ;
 int kauth_cred_unref (int **) ;
 int strlen (char const*) ;
 char* vfs_addname (char const*,int,int ,int ) ;
 int vfs_removename (char const*) ;
 int vnode_lock_convert (TYPE_1__*) ;
 int vnode_lock_spin (TYPE_1__*) ;
 int vnode_put (TYPE_1__*) ;
 scalar_t__ vnode_ref (TYPE_1__*) ;
 int vnode_rele (TYPE_1__*) ;
 int vnode_rele_internal (TYPE_1__*,int ,int ,int) ;
 int vnode_unlock (TYPE_1__*) ;

void
vnode_update_identity(vnode_t vp, vnode_t dvp, const char *name, int name_len, uint32_t name_hashval, int flags)
{
 struct namecache *ncp;
        vnode_t old_parentvp = NULLVP;
 int isstream = (vp->v_flag & VISNAMEDSTREAM);
 int kusecountbumped = 0;
 kauth_cred_t tcred = ((void*)0);
 const char *vname = ((void*)0);
 const char *tname = ((void*)0);

 if (flags & VNODE_UPDATE_PARENT) {
         if (dvp && vnode_ref(dvp) != 0) {
   dvp = NULLVP;
  }

  if (isstream && dvp && (dvp != vp) && (dvp != vp->v_parent) && (dvp->v_type == VREG)) {
   vnode_lock_spin(dvp);
   ++dvp->v_kusecount;
   kusecountbumped = 1;
   vnode_unlock(dvp);
  }
 } else {
         dvp = NULLVP;
 }
 if ( (flags & VNODE_UPDATE_NAME) ) {
  if (name != vp->v_name) {
   if (name && *name) {
    if (name_len == 0)
     name_len = strlen(name);
           tname = vfs_addname(name, name_len, name_hashval, 0);
   }
  } else
   flags &= ~VNODE_UPDATE_NAME;
 }
 if ( (flags & (VNODE_UPDATE_PURGE | VNODE_UPDATE_PARENT | VNODE_UPDATE_CACHE | VNODE_UPDATE_NAME)) ) {

  NAME_CACHE_LOCK();

  if ( (flags & VNODE_UPDATE_PURGE) ) {

   if (vp->v_parent)
    vp->v_parent->v_nc_generation++;

   while ( (ncp = LIST_FIRST(&vp->v_nclinks)) )
    cache_delete(ncp, 1);

   while ( (ncp = TAILQ_FIRST(&vp->v_ncchildren)) )
    cache_delete(ncp, 1);




   tcred = vp->v_cred;
   vp->v_cred = NOCRED;
   vp->v_authorized_actions = 0;
   vp->v_cred_timestamp = 0;
  }
  if ( (flags & VNODE_UPDATE_NAME) ) {
   vname = vp->v_name;
   vp->v_name = tname;
  }
  if (flags & VNODE_UPDATE_PARENT) {
   if (dvp != vp && dvp != vp->v_parent) {
    old_parentvp = vp->v_parent;
    vp->v_parent = dvp;
    dvp = NULLVP;

    if (old_parentvp)
     flags |= VNODE_UPDATE_CACHE;
   }
  }
  if (flags & VNODE_UPDATE_CACHE) {
   while ( (ncp = LIST_FIRST(&vp->v_nclinks)) )
    cache_delete(ncp, 1);
  }
  NAME_CACHE_UNLOCK();

  if (vname != ((void*)0))
   vfs_removename(vname);

  if (IS_VALID_CRED(tcred))
   kauth_cred_unref(&tcred);
 }
 if (dvp != NULLVP) {

  if (kusecountbumped) {
   vnode_lock_spin(dvp);
   if (dvp->v_kusecount > 0)
    --dvp->v_kusecount;
   vnode_unlock(dvp);
  }
         vnode_rele(dvp);
 }
 if (old_parentvp) {
         struct uthread *ut;

  if (isstream) {
          vnode_lock_spin(old_parentvp);
   if ((old_parentvp->v_type != VDIR) && (old_parentvp->v_kusecount > 0))
    --old_parentvp->v_kusecount;
   vnode_unlock(old_parentvp);
  }
         ut = get_bsdthread_info(current_thread());
  ut->uu_defer_reclaims = 1;
  ut->uu_vreclaims = NULLVP;

         while ( (vp = old_parentvp) != NULLVP ) {

          vnode_lock_spin(vp);
   vnode_rele_internal(vp, 0, 0, 1);
   if ( (vp->v_iocount == 1) && (vp->v_usecount == 0) &&
        ((vp->v_lflag & (VL_MARKTERM | VL_TERMINATE | VL_DEAD)) == VL_MARKTERM)) {
           vnode_lock_convert(vp);

           NAME_CACHE_LOCK();
    old_parentvp = vp->v_parent;
    vp->v_parent = NULLVP;
    NAME_CACHE_UNLOCK();
   } else {




           old_parentvp = NULLVP;
   }
   vnode_unlock(vp);
  }
  ut->uu_defer_reclaims = 0;

  while ( (vp = ut->uu_vreclaims) != NULLVP) {
          ut->uu_vreclaims = vp->v_defer_reclaimlist;





   vnode_put(vp);
  }
 }
}

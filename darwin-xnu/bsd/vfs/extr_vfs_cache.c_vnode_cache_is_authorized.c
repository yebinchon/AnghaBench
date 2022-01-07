
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_2__* vnode_t ;
typedef int vfs_context_t ;
typedef scalar_t__ kauth_cred_t ;
typedef int kauth_action_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_8__ {scalar_t__ v_type; int v_authorized_actions; scalar_t__ v_cred; TYPE_1__* v_mount; } ;
struct TYPE_7__ {int mnt_kern_flag; scalar_t__ mnt_authcache_ttl; } ;


 scalar_t__ FALSE ;
 int KAUTH_VNODE_SEARCH ;
 int MNTK_AUTH_CACHE_TTL ;
 int MNTK_AUTH_OPAQUE ;
 int NAME_CACHE_LOCK_SHARED () ;
 int NAME_CACHE_UNLOCK () ;
 TYPE_2__* NULLVP ;
 scalar_t__ TRUE ;
 scalar_t__ VDIR ;
 scalar_t__ bootarg_vnode_cache_defeat ;
 scalar_t__ vfs_context_ucred (int ) ;
 scalar_t__ vnode_cache_is_stale (TYPE_2__*) ;
 int vnode_uncache_authorized_action (TYPE_2__*,int) ;

boolean_t
vnode_cache_is_authorized(vnode_t vp, vfs_context_t ctx, kauth_action_t action)
{
 kauth_cred_t ucred;
 boolean_t retval = FALSE;


 if (bootarg_vnode_cache_defeat)
  return FALSE;

 if ( (vp->v_mount->mnt_kern_flag & (MNTK_AUTH_OPAQUE | MNTK_AUTH_CACHE_TTL)) ) {




         if (vp->v_mount->mnt_authcache_ttl) {
          if ( !(vp->v_mount->mnt_kern_flag & MNTK_AUTH_CACHE_TTL) ) {





           if (action != KAUTH_VNODE_SEARCH || vp->v_type != VDIR)
            vp = NULLVP;
   }
   if (vp != NULLVP && vnode_cache_is_stale(vp) == TRUE) {
           vnode_uncache_authorized_action(vp, vp->v_authorized_actions);
    vp = NULLVP;
   }
  } else
          vp = NULLVP;
 }
 if (vp != NULLVP) {
         ucred = vfs_context_ucred(ctx);

  NAME_CACHE_LOCK_SHARED();

  if (vp->v_cred == ucred && (vp->v_authorized_actions & action) == action)
          retval = TRUE;

  NAME_CACHE_UNLOCK();
 }
 return retval;
}

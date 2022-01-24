#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* vnode_t ;
typedef  int /*<<< orphan*/  vfs_context_t ;
typedef  scalar_t__ kauth_cred_t ;
typedef  int kauth_action_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_8__ {scalar_t__ v_type; int v_authorized_actions; scalar_t__ v_cred; TYPE_1__* v_mount; } ;
struct TYPE_7__ {int mnt_kern_flag; scalar_t__ mnt_authcache_ttl; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int KAUTH_VNODE_SEARCH ; 
 int MNTK_AUTH_CACHE_TTL ; 
 int MNTK_AUTH_OPAQUE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_2__* NULLVP ; 
 scalar_t__ TRUE ; 
 scalar_t__ VDIR ; 
 scalar_t__ bootarg_vnode_cache_defeat ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int) ; 

boolean_t
FUNC5(vnode_t vp, vfs_context_t ctx, kauth_action_t action)
{
	kauth_cred_t	ucred;
	boolean_t	retval = FALSE;

	/* Boot argument to defeat rights caching */
	if (bootarg_vnode_cache_defeat)
		return FALSE;

	if ( (vp->v_mount->mnt_kern_flag & (MNTK_AUTH_OPAQUE | MNTK_AUTH_CACHE_TTL)) ) {
	        /*
		 * a TTL is enabled on the rights cache... handle it here
		 * a TTL of 0 indicates that no rights should be cached
		 */
	        if (vp->v_mount->mnt_authcache_ttl) {
		        if ( !(vp->v_mount->mnt_kern_flag & MNTK_AUTH_CACHE_TTL) ) {
			        /*
				 * For filesystems marked only MNTK_AUTH_OPAQUE (generally network ones),
				 * we will only allow a SEARCH right on a directory to be cached...
				 * that cached right always has a default TTL associated with it
				 */
			        if (action != KAUTH_VNODE_SEARCH || vp->v_type != VDIR)
				        vp = NULLVP;
			}
			if (vp != NULLVP && FUNC3(vp) == TRUE) {
			        FUNC4(vp, vp->v_authorized_actions);
				vp = NULLVP;
			}
		} else
		        vp = NULLVP;
	}
	if (vp != NULLVP) {
	        ucred = FUNC2(ctx);

		FUNC0();

		if (vp->v_cred == ucred && (vp->v_authorized_actions & action) == action)
		        retval = TRUE;
		
		FUNC1();
	}
	return retval;
}
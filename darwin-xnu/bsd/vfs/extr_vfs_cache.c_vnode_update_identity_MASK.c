#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vnode_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct uthread {int uu_defer_reclaims; TYPE_1__* uu_vreclaims; } ;
struct namecache {int dummy; } ;
typedef  int /*<<< orphan*/ * kauth_cred_t ;
struct TYPE_12__ {int v_flag; scalar_t__ v_type; scalar_t__ v_kusecount; char const* v_name; int v_iocount; scalar_t__ v_usecount; int v_lflag; struct TYPE_12__* v_defer_reclaimlist; struct TYPE_12__* v_parent; int /*<<< orphan*/  v_nclinks; scalar_t__ v_cred_timestamp; scalar_t__ v_authorized_actions; int /*<<< orphan*/ * v_cred; int /*<<< orphan*/  v_ncchildren; int /*<<< orphan*/  v_nc_generation; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct namecache* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/ * NOCRED ; 
 TYPE_1__* NULLVP ; 
 struct namecache* FUNC4 (int /*<<< orphan*/ *) ; 
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
 int /*<<< orphan*/  FUNC5 (struct namecache*,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 struct uthread* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **) ; 
 int FUNC9 (char const*) ; 
 char* FUNC10 (char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char const*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 scalar_t__ FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*) ; 

void
FUNC19(vnode_t vp, vnode_t dvp, const char *name, int name_len, uint32_t name_hashval, int flags)
{
	struct	namecache *ncp;
        vnode_t	old_parentvp = NULLVP;
	int isstream = (vp->v_flag & VISNAMEDSTREAM);
	int kusecountbumped = 0;
	kauth_cred_t tcred = NULL;
	const char *vname = NULL;
	const char *tname = NULL;

	if (flags & VNODE_UPDATE_PARENT) {
	        if (dvp && FUNC15(dvp) != 0) {
			dvp = NULLVP;
		}
		/* Don't count a stream's parent ref during unmounts */
		if (isstream && dvp && (dvp != vp) && (dvp != vp->v_parent) && (dvp->v_type == VREG)) {
			FUNC13(dvp);
			++dvp->v_kusecount;
			kusecountbumped = 1;
			FUNC18(dvp);
		}
	} else {
	        dvp = NULLVP;
	}
	if ( (flags & VNODE_UPDATE_NAME) ) {
		if (name != vp->v_name) {
			if (name && *name) {
				if (name_len == 0)
					name_len = FUNC9(name);
			        tname = FUNC10(name, name_len, name_hashval, 0);
			}
		} else
			flags &= ~VNODE_UPDATE_NAME;
	}
	if ( (flags & (VNODE_UPDATE_PURGE | VNODE_UPDATE_PARENT | VNODE_UPDATE_CACHE | VNODE_UPDATE_NAME)) ) {

		FUNC2();

		if ( (flags & VNODE_UPDATE_PURGE) ) {

			if (vp->v_parent)
				vp->v_parent->v_nc_generation++;

			while ( (ncp = FUNC1(&vp->v_nclinks)) )
				FUNC5(ncp, 1);

			while ( (ncp = FUNC4(&vp->v_ncchildren)) )
				FUNC5(ncp, 1);

			/*
			 * Use a temp variable to avoid kauth_cred_unref() while NAME_CACHE_LOCK is held
			 */
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
			while ( (ncp = FUNC1(&vp->v_nclinks)) )
				FUNC5(ncp, 1);
		}
		FUNC3();
	
		if (vname != NULL)
			FUNC11(vname);

		if (FUNC0(tcred))
			FUNC8(&tcred);
	}
	if (dvp != NULLVP) {
		/* Back-out the ref we took if we lost a race for vp->v_parent. */
		if (kusecountbumped) {
			FUNC13(dvp);
			if (dvp->v_kusecount > 0)
				--dvp->v_kusecount;  
			FUNC18(dvp);
		}
	        FUNC16(dvp);
	}
	if (old_parentvp) {
	        struct  uthread *ut;

		if (isstream) {
		        FUNC13(old_parentvp);
			if ((old_parentvp->v_type != VDIR) && (old_parentvp->v_kusecount > 0))
				--old_parentvp->v_kusecount;
			FUNC18(old_parentvp);
		}
	        ut = FUNC7(FUNC6());

		/*
		 * indicated to vnode_rele that it shouldn't do a
		 * vnode_reclaim at this time... instead it will
		 * chain the vnode to the uu_vreclaims list...
		 * we'll be responsible for calling vnode_reclaim
		 * on each of the vnodes in this list...
		 */
		ut->uu_defer_reclaims = 1;
		ut->uu_vreclaims = NULLVP;

	        while ( (vp = old_parentvp) != NULLVP ) {
	  
		        FUNC13(vp);
			FUNC17(vp, 0, 0, 1);

			/*
			 * check to see if the vnode is now in the state
			 * that would have triggered a vnode_reclaim in vnode_rele
			 * if it is, we save it's parent pointer and then NULL
			 * out the v_parent field... we'll drop the reference
			 * that was held on the next iteration of this loop...
			 * this short circuits a potential deep recursion if we
			 * have a long chain of parents in this state... 
			 * we'll sit in this loop until we run into
			 * a parent in this chain that is not in this state
			 *
			 * make our check and the vnode_rele atomic
			 * with respect to the current vnode we're working on
			 * by holding the vnode lock
			 * if vnode_rele deferred the vnode_reclaim and has put
			 * this vnode on the list to be reaped by us, than
			 * it has left this vnode with an iocount == 1
			 */
			if ( (vp->v_iocount == 1) && (vp->v_usecount == 0) &&
			     ((vp->v_lflag & (VL_MARKTERM | VL_TERMINATE | VL_DEAD)) == VL_MARKTERM)) {
			        /*
				 * vnode_rele wanted to do a vnode_reclaim on this vnode
				 * it should be sitting on the head of the uu_vreclaims chain
				 * pull the parent pointer now so that when we do the
				 * vnode_reclaim for each of the vnodes in the uu_vreclaims
				 * list, we won't recurse back through here
				 *
				 * need to do a convert here in case vnode_rele_internal
				 * returns with the lock held in the spin mode... it 
				 * can drop and retake the lock under certain circumstances
				 */
			        FUNC12(vp);

			        FUNC2();
				old_parentvp = vp->v_parent;
				vp->v_parent = NULLVP;
				FUNC3();
			} else {
			        /*
				 * we're done... we ran into a vnode that isn't
				 * being terminated
				 */
			        old_parentvp = NULLVP;
			}
			FUNC18(vp);
		}
		ut->uu_defer_reclaims = 0;

		while ( (vp = ut->uu_vreclaims) != NULLVP) {
		        ut->uu_vreclaims = vp->v_defer_reclaimlist;
			
			/*
			 * vnode_put will drive the vnode_reclaim if
			 * we are still the only reference on this vnode
			 */
			FUNC14(vp);
		}
	}
}
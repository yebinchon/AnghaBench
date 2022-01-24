#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vnode_t ;
typedef  int /*<<< orphan*/  vfs_context_t ;
struct mount {int dummy; } ;
typedef  int /*<<< orphan*/  off_t ;
struct TYPE_23__ {int v_usecount; int v_lflag; scalar_t__ v_tag; scalar_t__ v_parent; int /*<<< orphan*/  v_flag; int /*<<< orphan*/ * v_data; int /*<<< orphan*/  v_op; int /*<<< orphan*/  v_mount; scalar_t__ v_resolve; } ;

/* Variables and functions */
 int BUF_INVALIDATE_LOCKED ; 
 int BUF_WRITE_DATA ; 
 int DOCLOSE ; 
 int IO_NDELAY ; 
 int IO_REVOKE ; 
 int /*<<< orphan*/  MNT_WAIT ; 
 scalar_t__ NULLVP ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int REVOKEALL ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int UBC_INVALIDATE ; 
 int UBC_PUSHALL ; 
 int UBC_SYNC ; 
 int /*<<< orphan*/  VISDIRTY ; 
 int VL_DEAD ; 
 int VL_HASSTREAMS ; 
 int VL_NEEDINACTIVE ; 
 int VL_TERMINATE ; 
 int VL_TERMWANT ; 
 int VNODE_UPDATE_NAME ; 
 int VNODE_UPDATE_PARENT ; 
 int VNODE_UPDATE_PURGE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ VT_NFS ; 
 scalar_t__ VT_NON ; 
 int /*<<< orphan*/  V_SAVE ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dead_mountp ; 
 int /*<<< orphan*/  dead_vnodeop_p ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,struct mount*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  num_recycledvnodes ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int FUNC15 (TYPE_1__*) ; 
 scalar_t__ FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC23 (int*) ; 

__attribute__((used)) static void
FUNC24(vnode_t vp, int flags)
{
	vfs_context_t ctx = FUNC14();
	int active;
	int need_inactive;
	int already_terminating;
	int clflags = 0;
#if NAMEDSTREAMS
	int is_namedstream;
#endif

	/*
	 * Check to see if the vnode is in use.
	 * If so we have to reference it before we clean it out
	 * so that its count cannot fall to zero and generate a
	 * race against ourselves to recycle it.
	 */
	active = vp->v_usecount;

	/*
	 * just in case we missed sending a needed
	 * VNOP_INACTIVE, we'll do it now
	 */
	need_inactive = (vp->v_lflag & VL_NEEDINACTIVE);

	vp->v_lflag &= ~VL_NEEDINACTIVE;

	/*
	 * Prevent the vnode from being recycled or
	 * brought into use while we clean it out.
	 */
	already_terminating = (vp->v_lflag & VL_TERMINATE);

	vp->v_lflag |= VL_TERMINATE;

#if NAMEDSTREAMS
	is_namedstream = vnode_isnamedstream(vp);
#endif

	FUNC21(vp);

	FUNC0(1, &num_recycledvnodes);

	if (flags & DOCLOSE)
		clflags |= IO_NDELAY;
	if (flags & REVOKEALL)
		clflags |= IO_REVOKE;
	
	if (active && (flags & DOCLOSE))
		FUNC2(vp, clflags, ctx);

	/*
	 * Clean out any buffers associated with the vnode.
	 */
	if (flags & DOCLOSE) {
#if NFSCLIENT
		if (vp->v_tag == VT_NFS)
			nfs_vinvalbuf(vp, V_SAVE, ctx, 0);
		else
#endif
		{
			FUNC3(vp, MNT_WAIT, ctx);

			/*
			 * If the vnode is still in use (by the journal for
			 * example) we don't want to invalidate locked buffers
			 * here.  In that case, either the journal will tidy them
			 * up, or we will deal with it when the usecount is
			 * finally released in vnode_rele_internal.
			 */
			FUNC6(vp, BUF_WRITE_DATA | (active ? 0 : BUF_INVALIDATE_LOCKED), 0, 0);
		}
		if (FUNC1(vp))
		        /*
			 * Clean the pages in VM.
			 */
		        (void)FUNC12(vp, (off_t)0, FUNC11(vp), NULL, UBC_PUSHALL | UBC_INVALIDATE | UBC_SYNC);
	}
	if (active || need_inactive) 
		FUNC4(vp, ctx);

#if NAMEDSTREAMS
	if ((is_namedstream != 0) && (vp->v_parent != NULLVP)) {
		vnode_t pvp = vp->v_parent;
	    
		/* Delete the shadow stream file before we reclaim its vnode */
		if (vnode_isshadow(vp)) {
			vnode_relenamedstream(pvp, vp);
		}
		
		/* 
		 * No more streams associated with the parent.  We
		 * have a ref on it, so its identity is stable.
		 * If the parent is on an opaque volume, then we need to know
		 * whether it has associated named streams.
		 */
		if (vfs_authopaque(pvp->v_mount)) {
			vnode_lock_spin(pvp);
			pvp->v_lflag &= ~VL_HASSTREAMS;
			vnode_unlock(pvp);
		}
	}
#endif

	/*
	 * Destroy ubc named reference
	 * cluster_release is done on this path
	 * along with dropping the reference on the ucred
	 * (and in the case of forced unmount of an mmap-ed file,
	 * the ubc reference on the vnode is dropped here too).
	 */
	FUNC10(vp);

#if CONFIG_TRIGGERS
	/*
	 * cleanup trigger info from vnode (if any)
	 */
	if (vp->v_resolve)
		vnode_resolver_detach(vp);
#endif

	/*
	 * Reclaim the vnode.
	 */
	if (FUNC5(vp, ctx))
		FUNC9("vclean: cannot reclaim");
	
	// make sure the name & parent ptrs get cleaned out!
	FUNC22(vp, NULLVP, NULL, 0, 0, VNODE_UPDATE_PARENT | VNODE_UPDATE_NAME | VNODE_UPDATE_PURGE);

	FUNC17(vp);

	/*
	 * Remove the vnode from any mount list it might be on.  It is not
	 * safe to do this any earlier because unmount needs to wait for
	 * any vnodes to terminate and it cannot do that if it cannot find
	 * them.
	 */
	FUNC7(vp, (struct mount *)0);

	vp->v_mount = dead_mountp;
	vp->v_op = dead_vnodeop_p;
	vp->v_tag = VT_NON;
	vp->v_data = NULL;

	vp->v_lflag |= VL_DEAD;
	vp->v_flag &= ~VISDIRTY;

	if (already_terminating == 0) {
	        vp->v_lflag &= ~VL_TERMINATE;
		/*
		 * Done with purge, notify sleepers of the grim news.
		 */
		if (vp->v_lflag & VL_TERMWANT) {
		        vp->v_lflag &= ~VL_TERMWANT;
			FUNC23(&vp->v_lflag);
		}
	}
}
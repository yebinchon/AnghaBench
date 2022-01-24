#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct vnode {unsigned int v_id; int v_flag; scalar_t__ v_writecount; scalar_t__ v_type; scalar_t__ v_usecount; scalar_t__ v_kusecount; int /*<<< orphan*/  v_op; int /*<<< orphan*/  v_lflag; int /*<<< orphan*/  v_iocount; int /*<<< orphan*/  v_lock; struct mount* v_mount; } ;
struct mount {int mnt_kern_flag; int /*<<< orphan*/  mnt_vnodelist; int /*<<< orphan*/  mnt_workerqueue; } ;

/* Variables and functions */
 int EBUSY ; 
 int FORCECLOSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MNTK_UNMOUNT_PREFLIGHT ; 
 int /*<<< orphan*/  PVFS ; 
 int SKIPROOT ; 
 int SKIPSWAP ; 
 int SKIPSYSTEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct vnode* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct vnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct vnode*,int /*<<< orphan*/ ) ; 
 scalar_t__ VBLK ; 
 scalar_t__ VCHR ; 
 int VDEVFLUSH ; 
 int /*<<< orphan*/  VL_DEAD ; 
 int /*<<< orphan*/  VL_TERMINATE ; 
 int /*<<< orphan*/  VL_TERMWANT ; 
 int VNOFLUSH ; 
 scalar_t__ VREG ; 
 int VROOT ; 
 int VSWAP ; 
 int VSYSTEM ; 
 int WRITECLOSE ; 
 scalar_t__ busyprt ; 
 int /*<<< orphan*/  FUNC5 (struct mount*) ; 
 int /*<<< orphan*/  FUNC6 (struct mount*) ; 
 int /*<<< orphan*/  FUNC7 (struct mount*) ; 
 int /*<<< orphan*/  FUNC8 (struct mount*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct vnode*,int) ; 
 int /*<<< orphan*/  spec_vnodeop_p ; 
 int /*<<< orphan*/  v_mntvnodes ; 
 int /*<<< orphan*/  FUNC11 (struct vnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC13 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC14 (struct mount*) ; 
 int FUNC15 (struct mount*) ; 
 scalar_t__ FUNC16 (struct mount*) ; 
 int /*<<< orphan*/  FUNC17 (struct mount*) ; 
 int /*<<< orphan*/  FUNC18 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC19 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC20 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC21 (struct vnode*,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC22 (struct mount*,struct vnode*,int) ; 
 int /*<<< orphan*/  FUNC23 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC24 (char*,struct vnode*) ; 

int
FUNC25(struct mount *mp, struct vnode *skipvp, int flags)
{
	struct vnode *vp;
	int busy = 0;
	int reclaimed = 0;
	int retval;
	unsigned int vid;

	/*
	 * See comments in vnode_iterate() for the rationale for this lock
	 */
	FUNC5(mp);

	FUNC7(mp);
	FUNC17(mp);
	/*
	 * On regular unmounts(not forced) do a
	 * quick check for vnodes to be in use. This
	 * preserves the caching of vnodes. automounter
	 * tries unmounting every so often to see whether
	 * it is still busy or not.
	 */
	if (((flags & FORCECLOSE)==0)  && ((mp->mnt_kern_flag & MNTK_UNMOUNT_PREFLIGHT) != 0)) {
		if (FUNC22(mp, skipvp, flags)) {
			FUNC14(mp);
			FUNC8(mp);
			FUNC6(mp);
			return(EBUSY);
		}
	}
loop:
	/* If it returns 0 then there is nothing to do */
	retval = FUNC15(mp);

	if (retval == 0)  {
		FUNC14(mp);
		FUNC8(mp);
		FUNC6(mp);
		return(retval);
	}

	/* iterate over all the vnodes */
	while (!FUNC1(&mp->mnt_workerqueue)) {

		vp = FUNC2(&mp->mnt_workerqueue);
		FUNC4(&mp->mnt_workerqueue, vp, v_mntvnodes);
		FUNC3(&mp->mnt_vnodelist, vp, v_mntvnodes);

		if ( (vp->v_mount != mp) || (vp == skipvp)) {
			continue;
		}
		vid = vp->v_id;
		FUNC8(mp);

		FUNC20(vp);

		// If vnode is already terminating, wait for it...
		while (vp->v_id == vid && FUNC0(vp->v_lflag, VL_TERMINATE)) {
			vp->v_lflag |= VL_TERMWANT;
			FUNC9(&vp->v_lflag, &vp->v_lock, PVFS, "vflush", NULL);
		}

		if ((vp->v_id != vid) || FUNC0(vp->v_lflag, VL_DEAD)) {
				FUNC23(vp);
				FUNC7(mp);
				continue;
		}

		/*
		 * If requested, skip over vnodes marked VSYSTEM.
		 * Skip over all vnodes marked VNOFLUSH.
                 */
		if ((flags & SKIPSYSTEM) && ((vp->v_flag & VSYSTEM) ||
		    (vp->v_flag & VNOFLUSH))) {
			FUNC23(vp);
			FUNC7(mp);
			continue;
		}
		/*
		 * If requested, skip over vnodes marked VSWAP.
		 */
		if ((flags & SKIPSWAP) && (vp->v_flag & VSWAP)) {
			FUNC23(vp);
			FUNC7(mp);
			continue;
		}
		/*
		 * If requested, skip over vnodes marked VROOT.
		 */
		if ((flags & SKIPROOT) && (vp->v_flag & VROOT)) {
			FUNC23(vp);
			FUNC7(mp);
			continue;
		}
		/*
		 * If WRITECLOSE is set, only flush out regular file
		 * vnodes open for writing.
		 */
		if ((flags & WRITECLOSE) &&
		    (vp->v_writecount == 0 || vp->v_type != VREG)) {
			FUNC23(vp);
			FUNC7(mp);
			continue;
		}
		/*
		 * If the real usecount is 0, all we need to do is clear
		 * out the vnode data structures and we are done.
		 */
		if (((vp->v_usecount == 0) ||
		    ((vp->v_usecount - vp->v_kusecount) == 0))) {

			FUNC19(vp);
		        vp->v_iocount++;	/* so that drain waits for * other iocounts */
#ifdef JOE_DEBUG
			record_vp(vp, 1);
#endif
			FUNC21(vp, 1, 1, 0);
			FUNC13(vp);
			FUNC18(vp);
			FUNC23(vp);

			reclaimed++;
			FUNC7(mp);
			continue;
		}
		/*
		 * If FORCECLOSE is set, forcibly close the vnode.
		 * For block or character devices, revert to an
		 * anonymous device. For all other files, just kill them.
		 */
		if (flags & FORCECLOSE) {
			FUNC19(vp);

			if (vp->v_type != VBLK && vp->v_type != VCHR) {
				vp->v_iocount++;	/* so that drain waits * for other iocounts */
#ifdef JOE_DEBUG
				record_vp(vp, 1);
#endif
				FUNC12(vp);
				FUNC21(vp, 1, 1, 0);
				FUNC13(vp);
				FUNC18(vp);
				FUNC23(vp);
			} else {
				FUNC11(vp, 0);
				vp->v_lflag &= ~VL_DEAD;
				vp->v_op = spec_vnodeop_p;
				vp->v_flag |= VDEVFLUSH;
				FUNC23(vp);
			}
			FUNC7(mp);
			continue;
		}
#if DIAGNOSTIC
		if (busyprt)
			vprint("vflush: busy vnode", vp);
#endif
		FUNC23(vp);
		FUNC7(mp);
		busy++;
	}

	/* At this point the worker queue is completed */
	if (busy && ((flags & FORCECLOSE)==0) && reclaimed) {
		busy = 0;
		reclaimed = 0;
		(void)FUNC16(mp);
		/* returned with mount lock held */
		goto loop;
	}

	/* if new vnodes were created in between retry the reclaim */
 	if ( FUNC16(mp) != 0) {
		if (!(busy && ((flags & FORCECLOSE)==0)))
			goto loop;
	}
	FUNC14(mp);
	FUNC8(mp);
	FUNC6(mp);

	if (busy && ((flags & FORCECLOSE)==0))
		return (EBUSY);
	return (0);
}
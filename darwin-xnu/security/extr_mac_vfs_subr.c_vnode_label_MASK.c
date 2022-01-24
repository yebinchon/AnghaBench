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
typedef  int /*<<< orphan*/  vfs_context_t ;
struct vnode {int v_lflag; int v_flag; int /*<<< orphan*/  v_lock; int /*<<< orphan*/ * v_label; } ;
struct timespec {int tv_sec; scalar_t__ tv_nsec; } ;
struct mount {int dummy; } ;
struct componentname {int dummy; } ;

/* Variables and functions */
 int EWOULDBLOCK ; 
 int PDROP ; 
 int PVFS ; 
 int VL_LABEL ; 
 int VL_LABELED ; 
 int VL_LABELWAIT ; 
 int VNCACHEABLE ; 
 int VNODE_LABEL_CREATE ; 
 scalar_t__ mac_label_vnodes ; 
 int /*<<< orphan*/ * FUNC0 () ; 
 int FUNC1 (struct mount*,struct vnode*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct mount*,struct vnode*,struct vnode*,struct componentname*) ; 
 int FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int,char*,struct timespec*) ; 
 int /*<<< orphan*/  FUNC4 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC5 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC6 (char*,struct vnode*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **) ; 

int
FUNC8(struct mount *mp, struct vnode *dvp, struct vnode *vp,
	    struct componentname *cnp, int flags, vfs_context_t ctx)
{
	int error = 0;


	/* fast path checks... */

	/* are we labeling vnodes? If not still notify of create */
	if (mac_label_vnodes == 0) {
		if (flags & VNODE_LABEL_CREATE)
			error = FUNC2(ctx,
			    mp, dvp, vp, cnp);
		return 0;
	}

	/* if already VL_LABELED */
	if (vp->v_lflag & VL_LABELED)
		return (0);

	FUNC4(vp);

	/*
	 * must revalidate state once we hold the lock
	 * since we could have blocked and someone else
	 * has since labeled this vnode
	 */
	if (vp->v_lflag & VL_LABELED) {
		FUNC5(vp);
		return (0);
	}

	if ((vp->v_lflag & VL_LABEL) == 0) {
		vp->v_lflag |= VL_LABEL;

		/* Could sleep on disk I/O, drop lock. */
		FUNC5(vp);

		if (vp->v_label == NULL)
			vp->v_label = FUNC0();

		if (flags & VNODE_LABEL_CREATE)
			error = FUNC2(ctx,
			    mp, dvp, vp, cnp);
		else
			error = FUNC1(mp, vp, ctx);

		FUNC4(vp);

		if ((error == 0) && (vp->v_flag & VNCACHEABLE))
			vp->v_lflag |= VL_LABELED;
		vp->v_lflag &= ~VL_LABEL;

		if (vp->v_lflag & VL_LABELWAIT) {
			vp->v_lflag &= ~VL_LABELWAIT;
			FUNC7(&vp->v_label);
		}
	} else {
		struct timespec ts;

		ts.tv_sec = 10;
		ts.tv_nsec = 0;

		while (vp->v_lflag & VL_LABEL) {
			vp->v_lflag |= VL_LABELWAIT;

			error = FUNC3(&vp->v_label, &vp->v_lock, PVFS|PDROP,
				       "vnode_label", &ts);
			FUNC4(vp);

			if (error == EWOULDBLOCK) {
				FUNC6("vnode label timeout", vp);
				break;
			}
		}
		/* XXX: what should be done if labeling failed (above)? */
	}
	FUNC5(vp);

	return (error);
}
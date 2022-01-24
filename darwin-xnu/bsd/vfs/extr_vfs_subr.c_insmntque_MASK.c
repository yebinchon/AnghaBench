#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_4__* vnode_t ;
typedef  TYPE_5__* mount_t ;
struct TYPE_20__ {int mnt_lflag; int /*<<< orphan*/  mnt_vnodelist; int /*<<< orphan*/  mnt_newvnodes; int /*<<< orphan*/  mnt_workerqueue; } ;
struct TYPE_17__ {TYPE_3__** tqe_prev; TYPE_3__* tqe_next; } ;
struct TYPE_19__ {int v_lflag; TYPE_2__ v_mntvnodes; TYPE_5__* v_mount; } ;
struct TYPE_16__ {TYPE_3__** tqe_prev; } ;
struct TYPE_18__ {TYPE_1__ v_mntvnodes; } ;

/* Variables and functions */
 int MNT_LITER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int VNAMED_MOUNT ; 
 TYPE_5__* dead_mountp ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  v_mntvnodes ; 
 int /*<<< orphan*/  vnodelst ; 

__attribute__((used)) static void
FUNC8(vnode_t vp, mount_t mp)
{
	mount_t lmp;
	/*
	 * Delete from old mount point vnode list, if on one.
	 */
	if ( (lmp = vp->v_mount) != NULL && lmp != dead_mountp) {
		if ((vp->v_lflag & VNAMED_MOUNT) == 0)
			FUNC7("insmntque: vp not in mount vnode list");
		vp->v_lflag &= ~VNAMED_MOUNT;

		FUNC4(lmp);

		FUNC3(lmp, 1);

		if (vp->v_mntvnodes.tqe_next == NULL) {
			if (FUNC1(&lmp->mnt_vnodelist, vnodelst) == vp)
				FUNC2(&lmp->mnt_vnodelist, vp, v_mntvnodes);
			else if (FUNC1(&lmp->mnt_newvnodes, vnodelst) == vp)
				FUNC2(&lmp->mnt_newvnodes, vp, v_mntvnodes);
			else if (FUNC1(&lmp->mnt_workerqueue, vnodelst) == vp)
				FUNC2(&lmp->mnt_workerqueue, vp, v_mntvnodes);
		 } else {
			vp->v_mntvnodes.tqe_next->v_mntvnodes.tqe_prev = vp->v_mntvnodes.tqe_prev;
			*vp->v_mntvnodes.tqe_prev = vp->v_mntvnodes.tqe_next;
		}	
		vp->v_mntvnodes.tqe_next = NULL;
		vp->v_mntvnodes.tqe_prev = NULL;
		FUNC6(lmp);
		return;
	}

	/*
	 * Insert into list of vnodes for the new mount point, if available.
	 */
	if ((vp->v_mount = mp) != NULL) {
		FUNC4(mp);
		if ((vp->v_mntvnodes.tqe_next != 0) && (vp->v_mntvnodes.tqe_prev != 0))
			FUNC7("vp already in mount list");
		if (mp->mnt_lflag & MNT_LITER)
			FUNC0(&mp->mnt_newvnodes, vp, v_mntvnodes);
		else
			FUNC0(&mp->mnt_vnodelist, vp, v_mntvnodes);
		if (vp->v_lflag & VNAMED_MOUNT)
			FUNC7("insmntque: vp already in mount vnode list");
		vp->v_lflag |= VNAMED_MOUNT;
		FUNC5(mp, 1);
		FUNC6(mp);
	}
}
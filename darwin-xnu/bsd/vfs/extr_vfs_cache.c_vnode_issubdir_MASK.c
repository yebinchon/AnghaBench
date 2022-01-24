#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vnode_t ;
typedef  int /*<<< orphan*/  vfs_context_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct componentname {int cn_flags; char* cn_pnbuf; int cn_pnlen; char* cn_nameptr; int cn_namelen; int /*<<< orphan*/  cn_context; int /*<<< orphan*/  cn_nameiop; } ;
typedef  int /*<<< orphan*/  dotdotbuf ;
typedef  int /*<<< orphan*/  cn ;
typedef  int boolean_t ;
struct TYPE_16__ {int v_flag; struct TYPE_16__* v_parent; } ;

/* Variables and functions */
 int ENOENT ; 
 void* FALSE ; 
 int ISDOTDOT ; 
 int ISLASTCN ; 
 int /*<<< orphan*/  LOOKUP ; 
 int /*<<< orphan*/  MAX_ERROR_RETRY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__* NULLVP ; 
 int TRUE ; 
 int VISHARDLINK ; 
 int /*<<< orphan*/  VNODE_UPDATE_PARENT ; 
 int FUNC2 (TYPE_1__*,TYPE_1__**,struct componentname*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct componentname*,int) ; 
 int FUNC4 (TYPE_1__*,TYPE_1__*,int*,TYPE_1__**) ; 
 TYPE_1__* rootvnode ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

int
FUNC9(vnode_t vp, vnode_t dvp, int *is_subdir, vfs_context_t ctx)
{
	vnode_t start_vp, tvp;
	vnode_t vp_with_iocount;
	int error = 0;
	char dotdotbuf[] = "..";
	int error_retry_count = 0; /* retry count for potentially transient
	                              errors */

	*is_subdir = FALSE;
	tvp = start_vp = vp;
	/*
	 * Anytime we acquire an iocount in this function, we save the vnode
	 * in this variable and release it before exiting.
	 */
	vp_with_iocount = NULLVP;

	while (1) {
		boolean_t defer;
		vnode_t pvp;
		uint32_t vid;
		struct componentname cn;
		boolean_t is_subdir_locked = FALSE;

		if (tvp == dvp) {
			*is_subdir = TRUE;
			break;
		} else if (tvp == rootvnode) {
			/* *is_subdir = FALSE */
			break;
		}

		FUNC0();

		defer = FUNC4(tvp, dvp, &is_subdir_locked,
		    &tvp);

		if (defer && tvp)
			vid = FUNC8(tvp);

		FUNC1();

		if (!defer) {
			*is_subdir = is_subdir_locked;
			break;
		}

		if (!tvp) {
			if (error_retry_count++ < MAX_ERROR_RETRY) {
				tvp = vp;
				continue;
			}
			error = ENOENT;
			break;
		}

		if (tvp != start_vp) {
			if (vp_with_iocount) {
				FUNC6(vp_with_iocount);
				vp_with_iocount = NULLVP;
			}

			error = FUNC5(tvp, vid);
			if (error) {
				if (error_retry_count++ < MAX_ERROR_RETRY) {
					tvp = vp;
					error = 0;
					continue;
				}
				break;
			}

			vp_with_iocount = tvp;
		}

		FUNC3(&cn, sizeof(cn));
		cn.cn_nameiop = LOOKUP;
		cn.cn_flags = ISLASTCN | ISDOTDOT;
		cn.cn_context = ctx;
		cn.cn_pnbuf = &dotdotbuf[0];
		cn.cn_pnlen = sizeof(dotdotbuf);
		cn.cn_nameptr = cn.cn_pnbuf;
		cn.cn_namelen = 2;

		pvp = NULLVP;
		if ((error = FUNC2(tvp, &pvp, &cn, ctx)))
			break;

		if (!(tvp->v_flag & VISHARDLINK) && tvp->v_parent != pvp) {
			(void)FUNC7(tvp, pvp, NULL, 0, 0,
			    VNODE_UPDATE_PARENT);
		}

		if (vp_with_iocount)
			FUNC6(vp_with_iocount);

		vp_with_iocount = tvp = pvp;
	}

	if (vp_with_iocount)
		FUNC6(vp_with_iocount);

	return (error);
}
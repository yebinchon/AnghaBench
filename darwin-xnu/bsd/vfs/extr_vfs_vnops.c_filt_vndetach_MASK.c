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
struct vnode {int /*<<< orphan*/  v_knotes; } ;
struct knote {int /*<<< orphan*/  kn_hookid; scalar_t__ kn_hook; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct knote*) ; 
 int /*<<< orphan*/  VNODE_MONITOR_END ; 
 int /*<<< orphan*/  FUNC1 (struct vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (struct vnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC5 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC6 (struct vnode*) ; 

__attribute__((used)) static void
FUNC7(struct knote *kn)
{
	vfs_context_t ctx = FUNC2();
	struct vnode *vp; 
	vp = (struct vnode *)kn->kn_hook;
	if (FUNC3(vp, kn->kn_hookid))
		return;

	FUNC4(vp);
	FUNC0(&vp->v_knotes, kn);
	FUNC6(vp);
	
	/* 
	 * Tell a (generally networked) filesystem that we're no longer watching 
	 * If the FS wants to track contexts, it should still be using the one from
	 * the VNODE_MONITOR_BEGIN.
	 */
	FUNC1(vp, 0, VNODE_MONITOR_END, (void*)kn, ctx);
	FUNC5(vp);
}
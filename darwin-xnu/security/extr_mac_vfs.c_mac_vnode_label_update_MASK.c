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
struct vnode {struct label* v_label; } ;
struct label {int dummy; } ;
typedef  int /*<<< orphan*/  kauth_cred_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vnode*,struct label*,struct label*) ; 
 struct label* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct label*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vnode_label_update ; 
 int /*<<< orphan*/  FUNC4 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC5 (struct vnode*) ; 

void
FUNC6(vfs_context_t ctx, struct vnode *vp, struct label *newlabel)
{
	kauth_cred_t cred = FUNC3(ctx);
	struct label *tmpl = NULL;

	if (vp->v_label == NULL)
		tmpl = FUNC1();

	FUNC4(vp);

	/* recheck after lock */
	if (vp->v_label == NULL) {
		vp->v_label = tmpl;
		tmpl = NULL;
	}

	FUNC0(vnode_label_update, cred, vp, vp->v_label, newlabel);
	FUNC5(vp);

	if (tmpl != NULL)
		FUNC2(tmpl);
}
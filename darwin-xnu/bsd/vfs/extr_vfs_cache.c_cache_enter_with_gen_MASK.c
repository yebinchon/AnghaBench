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
struct vnode {int v_nc_generation; } ;
struct componentname {scalar_t__ cn_hash; int /*<<< orphan*/  cn_namelen; int /*<<< orphan*/  cn_nameptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct vnode*,struct vnode*,struct componentname*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC4(struct vnode *dvp, struct vnode *vp, struct componentname *cnp, int gen)
{

        if (cnp->cn_hash == 0)
	        cnp->cn_hash = FUNC3(cnp->cn_nameptr, cnp->cn_namelen);

	FUNC0();

	if (dvp->v_nc_generation == gen)
	        (void)FUNC2(dvp, vp, cnp, NULL);

	FUNC1();
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vnode_t ;
struct namecache {int dummy; } ;
typedef  int /*<<< orphan*/ * kauth_cred_t ;
struct TYPE_5__ {int /*<<< orphan*/  v_nc_generation; } ;
struct TYPE_4__ {scalar_t__ v_cred; scalar_t__ v_authorized_actions; int /*<<< orphan*/  v_ncchildren; int /*<<< orphan*/  v_nclinks; TYPE_3__* v_parent; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct namecache* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ NOCRED ; 
 TYPE_3__* NULLVP ; 
 struct namecache* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct namecache*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **) ; 

void
FUNC7(vnode_t vp)
{
        struct namecache *ncp;
	kauth_cred_t tcred = NULL;

	if ((FUNC1(&vp->v_nclinks) == NULL) && 
			(FUNC4(&vp->v_ncchildren) == NULL) &&
			(vp->v_cred == NOCRED) &&
			(vp->v_parent == NULLVP))
	        return;

	FUNC2();

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

	FUNC3();

	if (FUNC0(tcred))
	        FUNC6(&tcred);
}
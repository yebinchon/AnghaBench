#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* vnode_t ;
typedef  int /*<<< orphan*/  vfs_context_t ;
struct nameidata {TYPE_2__* ni_vp; TYPE_2__* ni_dvp; } ;
struct TYPE_9__ {int v_flag; TYPE_1__* v_mount; struct TYPE_9__* v_parent; } ;
struct TYPE_8__ {TYPE_2__* mnt_vnodecovered; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENAMETOOLONG ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  LOOKUP ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  FUNC1 (struct nameidata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* NULLVP ; 
 int /*<<< orphan*/  OP_LOOKUP ; 
 int /*<<< orphan*/  UIO_SYSSPACE ; 
 int /*<<< orphan*/  USEDVP ; 
 int VROOT ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int FUNC4 (struct nameidata*) ; 
 int /*<<< orphan*/  FUNC5 (struct nameidata*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int FUNC7 (char const*) ; 
 char* FUNC8 (TYPE_2__*) ; 
 scalar_t__ FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (char const*) ; 

int
FUNC11(vnode_t dvp, vnode_t *new_dvp, vfs_context_t ctx)
{
	char *path = NULL, *pp;
	const char *name, *np;
	int len;
	int error = 0;
	struct nameidata nd;
	vnode_t vp = dvp;

	*new_dvp = NULL;

	if (vp && vp->v_flag & VROOT) {
		*new_dvp = vp->v_mount->mnt_vnodecovered;
		if (FUNC9(*new_dvp))
			return ENOENT;
		return 0;
	}

	path = (char *) FUNC2(MAXPATHLEN);
	if (path == NULL) {
		error = ENOMEM;
		goto done;
	}

	/*
	 * Walk back up to the mountpoint following the
	 * v_parent chain and build a slash-separated path.
	 * Then lookup that path starting with the covered vnode.
	 */
	pp = path + (MAXPATHLEN - 1);
	*pp = '\0';

	while (1) {
		name = FUNC8(vp);
		if (name == NULL) {
			FUNC6("lookup_traverse_union: null parent name: .%s\n", pp);
			error = ENOENT;
			goto done;
		}
		len = FUNC7(name);
		if ((len + 1) > (pp - path)) {		// Enough space for this name ?
			error = ENAMETOOLONG;
			FUNC10(name);
			goto done;
		}
		for (np = name + len; len > 0; len--)	// Copy name backwards
			*--pp = *--np;
		FUNC10(name);
		vp = vp->v_parent;
		if (vp == NULLVP || vp->v_flag & VROOT)
			break;
		*--pp = '/';
	}

	/* Evaluate the path in the underlying mount */
	FUNC1(&nd, LOOKUP, OP_LOOKUP, USEDVP, UIO_SYSSPACE, FUNC0(pp), ctx);
	nd.ni_dvp = dvp->v_mount->mnt_vnodecovered;
	error = FUNC4(&nd);
	if (error == 0)
		*new_dvp = nd.ni_vp;
	FUNC5(&nd);
done:
	if (path)
		FUNC3(path, MAXPATHLEN);
	return error;
}
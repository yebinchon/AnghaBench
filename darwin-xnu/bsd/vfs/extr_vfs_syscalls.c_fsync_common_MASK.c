#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vnode_t ;
typedef  int /*<<< orphan*/  vfs_context_t ;
struct fsync_args {int /*<<< orphan*/  fd; } ;
struct fileproc {int f_flags; } ;
typedef  int /*<<< orphan*/  proc_t ;
struct TYPE_9__ {int v_flag; scalar_t__ v_parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARG_VNODE1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,...) ; 
 int FP_WRITTEN ; 
 scalar_t__ NULLVP ; 
 int VISNAMEDSTREAM ; 
 int FUNC1 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fd ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct fileproc**,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  vnpath ; 

__attribute__((used)) static int
FUNC9(proc_t p, struct fsync_args *uap, int flags)
{
	vnode_t vp;
	struct fileproc *fp;
	vfs_context_t ctx = FUNC4();
	int error;

	FUNC0(fd, uap->fd);

	if ( (error = FUNC3(p, uap->fd, &fp, &vp)) )
		return (error);
	if ( (error = FUNC6(vp)) ) {
		FUNC2(uap->fd);
		return(error);
	}

	FUNC0(vnpath, vp, ARG_VNODE1);

	error = FUNC1(vp, flags, ctx);

#if NAMEDRSRCFORK
	/* Sync resource fork shadow file if necessary. */
	if ((error == 0) &&
	    (vp->v_flag & VISNAMEDSTREAM) &&
	    (vp->v_parent != NULLVP) &&
	    vnode_isshadow(vp) &&
	    (fp->f_flags & FP_WRITTEN)) {
		(void) vnode_flushnamedstream(vp->v_parent, vp, ctx);
	}
#endif

	(void)FUNC8(vp);
	FUNC2(uap->fd);
	return (error);
}
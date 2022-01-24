#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vnode_t ;
typedef  int /*<<< orphan*/  vfs_context_t ;
typedef  TYPE_2__* uthread_t ;
typedef  scalar_t__ thread_t ;
struct mount {int dummy; } ;
struct filedesc {TYPE_1__* fd_cdir; } ;
struct fchdir_args {int fd; } ;
typedef  TYPE_3__* proc_t ;
struct TYPE_19__ {int /*<<< orphan*/  p_flag; struct filedesc* p_fd; } ;
struct TYPE_18__ {TYPE_1__* uu_cdir; } ;
struct TYPE_17__ {scalar_t__ v_type; struct mount* v_mountedhere; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARG_VNODE1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,...) ; 
 int EACCES ; 
 int EBADF ; 
 int ENOENT ; 
 int ENOTDIR ; 
 int /*<<< orphan*/  KAUTH_VNODE_SEARCH ; 
 int /*<<< orphan*/  LK_NOWAIT ; 
 TYPE_1__* NULLVP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  P_THCWD ; 
 scalar_t__ VDIR ; 
 int FUNC2 (struct mount*,TYPE_1__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fd ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int,TYPE_1__**) ; 
 TYPE_2__* FUNC5 (scalar_t__) ; 
 int FUNC6 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 scalar_t__ FUNC9 (struct mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct mount*) ; 
 int FUNC13 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*) ; 
 int /*<<< orphan*/  vnpath ; 

__attribute__((used)) static int
FUNC18(proc_t p, struct fchdir_args *uap, int per_thread)
{
	struct filedesc *fdp = p->p_fd;
	vnode_t vp;
	vnode_t tdp;
	vnode_t tvp;
	struct mount *mp;
	int error;
	vfs_context_t ctx = FUNC10();

	FUNC0(fd, uap->fd);
	if (per_thread && uap->fd == -1) {
		/*
		 * Switching back from per-thread to per process CWD; verify we
		 * in fact have one before proceeding.  The only success case
		 * for this code path is to return 0 preemptively after zapping
		 * the thread structure contents.
		 */
		thread_t th = FUNC11(ctx);
		if (th) {
			uthread_t uth = FUNC5(th);
			tvp = uth->uu_cdir;
			uth->uu_cdir = NULLVP;
			if (tvp != NULLVP) {
				FUNC17(tvp);
				return (0);
			}
		}
		return (EBADF);
	}

	if ( (error = FUNC4(uap->fd, &vp)) )
		return(error);
	if ( (error = FUNC14(vp)) ) {
	        FUNC3(uap->fd);
		return(error);
	}

	FUNC0(vnpath, vp, ARG_VNODE1);

	if (vp->v_type != VDIR) {
		error = ENOTDIR;
		goto out;
	}

#if CONFIG_MACF
	error = mac_vnode_check_chdir(ctx, vp);
	if (error)
		goto out;
#endif
	error = FUNC13(vp, NULL, KAUTH_VNODE_SEARCH, ctx);
	if (error)
		goto out;

	while (!error && (mp = vp->v_mountedhere) != NULL) {
		if (FUNC9(mp, LK_NOWAIT)) {
			error = EACCES;
			goto out;
		}
		error = FUNC2(mp, &tdp, ctx);
		FUNC12(mp);
		if (error)
			break;
		FUNC15(vp);
		vp = tdp;
	}
	if (error)
		goto out;
	if ( (error = FUNC16(vp)) )
	        goto out;
	FUNC15(vp);

	if (per_thread) {
		thread_t th = FUNC11(ctx);
		if (th) {
			uthread_t uth = FUNC5(th);
			tvp = uth->uu_cdir;
			uth->uu_cdir = vp;
			FUNC1(P_THCWD, &p->p_flag);
		} else {
			FUNC17(vp);
			return (ENOENT);
		}
	} else {
		FUNC7(p);
		tvp = fdp->fd_cdir;
		fdp->fd_cdir = vp;
		FUNC8(p);
	}

	if (tvp)
	        FUNC17(tvp);
	FUNC3(uap->fd);

	return (0);
out:
	FUNC15(vp);
	FUNC3(uap->fd);

	return(error);
}
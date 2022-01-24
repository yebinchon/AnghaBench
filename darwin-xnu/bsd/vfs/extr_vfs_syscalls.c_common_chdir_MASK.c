#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vnode_t ;
typedef  int /*<<< orphan*/  vfs_context_t ;
typedef  TYPE_1__* uthread_t ;
typedef  scalar_t__ thread_t ;
struct nameidata {scalar_t__ ni_vp; } ;
struct filedesc {scalar_t__ fd_cdir; } ;
struct chdir_args {int /*<<< orphan*/  path; } ;
typedef  TYPE_2__* proc_t ;
struct TYPE_8__ {int /*<<< orphan*/  p_flag; struct filedesc* p_fd; } ;
struct TYPE_7__ {scalar_t__ uu_cdir; } ;

/* Variables and functions */
 int AUDITVNPATH1 ; 
 int ENOENT ; 
 int FOLLOW ; 
 int /*<<< orphan*/  LOOKUP ; 
 int /*<<< orphan*/  FUNC0 (struct nameidata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OP_CHDIR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  P_THCWD ; 
 int /*<<< orphan*/  UIO_USERSPACE ; 
 int FUNC2 (struct nameidata*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 

__attribute__((used)) static int
FUNC11(proc_t p, struct chdir_args *uap, int per_thread)
{
	struct filedesc *fdp = p->p_fd;
	int error;
	struct nameidata nd;
	vnode_t tvp;
	vfs_context_t ctx = FUNC6();

	FUNC0(&nd, LOOKUP, OP_CHDIR, FOLLOW | AUDITVNPATH1,
		UIO_USERSPACE, uap->path, ctx);
	error = FUNC2(&nd, ctx);
	if (error)
		return (error);
	if ( (error = FUNC9(nd.ni_vp)) ) {
	        FUNC8(nd.ni_vp);
		return (error);
	}
	/*
	 * drop the iocount we picked up in change_dir
	 */
	FUNC8(nd.ni_vp);

	if (per_thread) {
		thread_t th = FUNC7(ctx);
		if (th) {
			uthread_t uth = FUNC3(th);
			tvp = uth->uu_cdir;
			uth->uu_cdir = nd.ni_vp;
			FUNC1(P_THCWD, &p->p_flag);
		} else {
			FUNC10(nd.ni_vp);
			return (ENOENT);
		}
	} else {
		FUNC4(p);
		tvp = fdp->fd_cdir;
		fdp->fd_cdir = nd.ni_vp;
		FUNC5(p);
	}

	if (tvp)
	        FUNC10(tvp);

	return (0);
}
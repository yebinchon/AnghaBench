#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vnode_t ;
struct filedesc {scalar_t__ fd_cdir; scalar_t__ fd_rdir; } ;
struct cdirargs {scalar_t__ olddp; scalar_t__ newdp; } ;
typedef  TYPE_1__* proc_t ;
struct TYPE_5__ {struct filedesc* p_fd; } ;

/* Variables and functions */
 int PROC_RETURNED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static int
FUNC4(proc_t p, void * arg)
{
	struct cdirargs * cdrp = (struct cdirargs * )arg;
	vnode_t olddp = cdrp->olddp;
	vnode_t newdp = cdrp->newdp;
	struct filedesc *fdp;
	vnode_t tvp;
	vnode_t fdp_cvp;
	vnode_t fdp_rvp;
	int cdir_changed = 0;
	int rdir_changed = 0;

	/*
	 * XXX Also needs to iterate each thread in the process to see if it
	 * XXX is using a per-thread current working directory, and, if so,
	 * XXX update that as well.
	 */

	FUNC0(p);
	fdp = p->p_fd;
	if (fdp == (struct filedesc *)0) {
		FUNC1(p);
		return(PROC_RETURNED);
	}
	fdp_cvp = fdp->fd_cdir;
	fdp_rvp = fdp->fd_rdir;
	FUNC1(p);

	if (fdp_cvp == olddp) {
		FUNC2(newdp);
		tvp = fdp->fd_cdir;
		fdp_cvp = newdp;
		cdir_changed = 1;
		FUNC3(tvp);
	}
	if (fdp_rvp == olddp) {
		FUNC2(newdp);
		tvp = fdp->fd_rdir;
		fdp_rvp = newdp;
		rdir_changed = 1;
		FUNC3(tvp);
	}
	if (cdir_changed || rdir_changed) {
		FUNC0(p);
		fdp->fd_cdir = fdp_cvp;
		fdp->fd_rdir = fdp_rvp;
		FUNC1(p);
	}
	return(PROC_RETURNED);
}
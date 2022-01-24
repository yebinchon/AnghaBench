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
typedef  TYPE_1__* uthread_t ;
typedef  int /*<<< orphan*/ * thread_t ;
struct vnop_open_args {int /*<<< orphan*/  a_context; struct vnode* a_vp; } ;
struct vnode {int dummy; } ;
struct TYPE_5__ {int fd_type; int /*<<< orphan*/  fd_fd; } ;
struct TYPE_4__ {int /*<<< orphan*/  uu_dupfd; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
#define  Fdesc 128 
 TYPE_3__* FUNC0 (struct vnode*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 

int
FUNC4(struct vnop_open_args *ap)
{
	struct vnode *vp = ap->a_vp;
	thread_t thr = FUNC3(ap->a_context);
	uthread_t uu;
	int error = 0;

	if (thr == NULL)
		return (EINVAL);

	uu = FUNC1(thr);

	switch (FUNC0(vp)->fd_type) {
	case Fdesc:
		/*
		 * XXX Kludge: set uu->uu_dupfd to contain the value of the
		 * the file descriptor being sought for duplication. The error 
		 * return ensures that the vnode for this device will be
		 * released by vn_open. Open will detect this special error and
		 * take the actions in dupfdopen.  Other callers of vn_open or
		 * vnop_open will simply report the error.
		 */
		uu->uu_dupfd = FUNC0(vp)->fd_fd;	/* XXX */
		error = ENODEV;
		break;
	default:	
		FUNC2("Invalid type for fdesc node!");
		break;
	}

	return (error);
}
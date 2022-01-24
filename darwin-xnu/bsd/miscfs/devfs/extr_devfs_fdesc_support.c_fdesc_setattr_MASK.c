#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vnop_setattr_args {int /*<<< orphan*/  a_context; int /*<<< orphan*/  a_vap; int /*<<< orphan*/  a_vp; } ;
struct vnode {int dummy; } ;
struct proc {int dummy; } ;
struct fileproc {TYPE_2__* f_fglob; } ;
struct TYPE_4__ {scalar_t__ fg_data; } ;
struct TYPE_3__ {int fd_type; unsigned int fd_fd; } ;

/* Variables and functions */
#define  DTYPE_PIPE 131 
#define  DTYPE_SOCKET 130 
#define  DTYPE_VNODE 129 
 int EACCES ; 
 int EBADF ; 
 int FUNC0 (TYPE_2__*) ; 
#define  Fdesc 128 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct proc*,unsigned int,struct fileproc*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct proc*,unsigned int,struct fileproc**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 struct proc* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC7 (struct vnode*) ; 
 int FUNC8 (struct vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC9(struct vnop_setattr_args *ap)
{
	struct fileproc *fp;
	unsigned fd;
	int error;
	struct proc * p = FUNC5(ap->a_context);

	/*
	 * Can't mess with the root vnode
	 */
	switch (FUNC1(ap->a_vp)->fd_type) {
	case Fdesc:
		break;
	default:
		FUNC4("Invalid type for an fdesc node!\n");
		return (EACCES);
	}

	fd = FUNC1(ap->a_vp)->fd_fd;
	if ((error = FUNC3(FUNC5(ap->a_context), fd, &fp, 0)))
		return (error);

	/*
	 * Can setattr the underlying vnode, but not sockets!
	 */
	switch (FUNC0(fp->f_fglob)) {
	case DTYPE_VNODE:
	{
		if ((error = FUNC6((struct vnode *) fp->f_fglob->fg_data)) != 0)
			break;
		error = FUNC8((struct vnode *) fp->f_fglob->fg_data, ap->a_vap, ap->a_context);
		(void)FUNC7((struct vnode *) fp->f_fglob->fg_data);
		break;
	}

	case DTYPE_SOCKET:
	case DTYPE_PIPE:
		error = 0;
		break;

	default:
		error = EBADF;
		break;
	}

	FUNC2(p, fd, fp, 0);
	return (error);
}
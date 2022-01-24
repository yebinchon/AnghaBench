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
typedef  scalar_t__ uint32_t ;
struct vnode {int dummy; } ;
struct fileproc {scalar_t__ f_type; scalar_t__ f_data; int /*<<< orphan*/  f_iocount; } ;
struct filedesc {int fd_nfiles; int* fd_ofileflags; struct fileproc** fd_ofiles; } ;
typedef  TYPE_1__* proc_t ;
struct TYPE_5__ {struct filedesc* p_fd; } ;

/* Variables and functions */
 scalar_t__ DTYPE_VNODE ; 
 int EBADF ; 
 int ENOTSUP ; 
 int UF_RESERVED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (struct vnode*) ; 

int
FUNC3(proc_t p, int fd, struct fileproc **resultfp,
		struct vnode **resultvp, uint32_t *vidp)
{
	struct filedesc *fdp = p->p_fd;
	struct fileproc *fp;

	FUNC0(p);
	if (fd < 0 || fd >= fdp->fd_nfiles ||
			(fp = fdp->fd_ofiles[fd]) == NULL ||
			(fdp->fd_ofileflags[fd] & UF_RESERVED)) {
		FUNC1(p);
		return (EBADF);
	}
	if (fp->f_type != DTYPE_VNODE) {
		FUNC1(p);
		return(ENOTSUP);
	}
	fp->f_iocount++;

	if (resultfp)
		*resultfp = fp;
	if (resultvp)
		*resultvp = (struct vnode *)fp->f_data;
	if (vidp)
		*vidp = (uint32_t)FUNC2((struct vnode *)fp->f_data);
	FUNC1(p);

	return (0);
}
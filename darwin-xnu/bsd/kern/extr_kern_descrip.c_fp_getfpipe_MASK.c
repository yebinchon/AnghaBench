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
struct pipe {int dummy; } ;
struct fileproc {scalar_t__ f_type; scalar_t__ f_data; int /*<<< orphan*/  f_iocount; } ;
struct filedesc {int fd_nfiles; int* fd_ofileflags; struct fileproc** fd_ofiles; } ;
typedef  TYPE_1__* proc_t ;
struct TYPE_5__ {struct filedesc* p_fd; } ;

/* Variables and functions */
 scalar_t__ DTYPE_PIPE ; 
 int EBADF ; 
 int UF_RESERVED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

int
FUNC2(proc_t p, int fd, struct fileproc **resultfp,
	    struct pipe **resultpipe)
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
	if (fp->f_type != DTYPE_PIPE) {
		FUNC1(p);
		return(EBADF);
	}
	fp->f_iocount++;

	if (resultfp)
		*resultfp = fp;
	if (resultpipe)
		*resultpipe = (struct pipe *)fp->f_data;
	FUNC1(p);

	return (0);
}
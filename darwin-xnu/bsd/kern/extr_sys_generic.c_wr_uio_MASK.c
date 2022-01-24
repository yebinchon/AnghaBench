#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ user_ssize_t ;
typedef  int /*<<< orphan*/  uio_t ;
struct vfs_context {int /*<<< orphan*/  vc_ucred; } ;
struct proc {int dummy; } ;
struct fileproc {scalar_t__ f_type; TYPE_1__* f_fglob; int /*<<< orphan*/  f_cred; } ;
struct TYPE_2__ {int fg_lflags; } ;

/* Variables and functions */
 scalar_t__ DTYPE_SOCKET ; 
 int EINTR ; 
 int EPIPE ; 
 int ERESTART ; 
 int EWOULDBLOCK ; 
 int FG_NOSIGPIPE ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int FUNC0 (struct fileproc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vfs_context*) ; 
 int /*<<< orphan*/  FUNC1 (struct proc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct vfs_context* FUNC3 () ; 

int
FUNC4(struct proc *p, struct fileproc *fp, uio_t uio, user_ssize_t *retval)
{
	int error;
	user_ssize_t count;
	struct vfs_context context = *FUNC3();

	count = FUNC2(uio);

	context.vc_ucred = fp->f_cred;
	error = FUNC0(fp, uio, 0, &context);
	if (error) {
		if (FUNC2(uio) != count && (error == ERESTART ||
						error == EINTR || error == EWOULDBLOCK))
		        error = 0;
		/* The socket layer handles SIGPIPE */
		if (error == EPIPE && fp->f_type != DTYPE_SOCKET &&
		    (fp->f_fglob->fg_lflags & FG_NOSIGPIPE) == 0)
		        FUNC1(p, SIGPIPE);
	}
	*retval = count - FUNC2(uio);

	return(error);
}
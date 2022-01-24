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
struct write_nocancel_args {int fd; int /*<<< orphan*/  nbyte; int /*<<< orphan*/  cbuf; } ;
struct vfs_context {int /*<<< orphan*/  vc_ucred; } ;
struct proc {int dummy; } ;
struct fileproc {int f_flag; TYPE_1__* f_fglob; } ;
typedef  int /*<<< orphan*/  off_t ;
struct TYPE_2__ {int /*<<< orphan*/  fg_cred; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int EBADF ; 
 scalar_t__ FUNC1 (struct fileproc*,int /*<<< orphan*/ ) ; 
 int FWRITE ; 
 int /*<<< orphan*/  GUARD_WRITE ; 
 int FUNC2 (struct vfs_context*,struct fileproc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (struct proc*,int,struct fileproc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct proc*,int,struct fileproc*) ; 
 int FUNC5 (struct proc*,int,struct fileproc*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct proc*,int,struct fileproc**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kGUARD_EXC_WRITE ; 
 int /*<<< orphan*/  FUNC7 (struct proc*) ; 
 int /*<<< orphan*/  FUNC8 (struct proc*) ; 
 struct vfs_context* FUNC9 () ; 

int
FUNC10(struct proc *p, struct write_nocancel_args *uap, user_ssize_t *retval)
{
	struct fileproc *fp;
	int error;      
	int fd = uap->fd;
	bool wrote_some = false;

	FUNC0(fd, fd);

	error = FUNC6(p,fd,&fp,0);
	if (error)
		return(error);
	if ((fp->f_flag & FWRITE) == 0) {
		error = EBADF;
	} else if (FUNC1(fp, GUARD_WRITE)) {
		FUNC7(p);
		error = FUNC5(p, fd, fp, kGUARD_EXC_WRITE);
		FUNC8(p);
	} else {
		struct vfs_context context = *(FUNC9());
		context.vc_ucred = fp->f_fglob->fg_cred;

		error = FUNC2(&context, fp, uap->cbuf, uap->nbyte,
			(off_t)-1, 0, retval);

		wrote_some = *retval > 0;
	}
	if (wrote_some)
	        FUNC4(p, fd, fp);
	else
	        FUNC3(p, fd, fp, 0);
	return(error);  
}
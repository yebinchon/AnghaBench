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
typedef  int /*<<< orphan*/  uguard ;
struct vfs_context {int /*<<< orphan*/  vc_ucred; } ;
struct proc {int dummy; } ;
struct guarded_write_np_args {int fd; int /*<<< orphan*/  nbyte; int /*<<< orphan*/  cbuf; int /*<<< orphan*/  guard; } ;
struct guarded_fileproc {int dummy; } ;
struct fileproc {int f_flag; TYPE_1__* f_fglob; } ;
typedef  int /*<<< orphan*/  off_t ;
typedef  int /*<<< orphan*/  guardid_t ;
struct TYPE_2__ {int /*<<< orphan*/  fg_cred; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int EBADF ; 
 int FWRITE ; 
 struct fileproc* FUNC1 (struct guarded_fileproc*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (struct vfs_context*,struct fileproc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (struct proc*,int,struct fileproc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct proc*,int,struct fileproc*) ; 
 int FUNC6 (struct proc*,int,int /*<<< orphan*/ ,struct guarded_fileproc**,int /*<<< orphan*/ ) ; 
 struct vfs_context* FUNC7 () ; 

int
FUNC8(struct proc *p, struct guarded_write_np_args *uap, user_ssize_t *retval)
{
	int error;      
	int fd = uap->fd;
	guardid_t uguard;
	struct fileproc *fp;
	struct guarded_fileproc *gfp;
	bool wrote_some = false;

	FUNC0(fd, fd);

	if ((error = FUNC2(uap->guard, &uguard, sizeof (uguard))) != 0)
		return (error);

	error = FUNC6(p, fd, uguard, &gfp, 0);
	if (error)
		return(error);

	fp = FUNC1(gfp);
	if ((fp->f_flag & FWRITE) == 0) {
		error = EBADF;
	} else {

		struct vfs_context context = *(FUNC7());
		context.vc_ucred = fp->f_fglob->fg_cred;

		error = FUNC3(&context, fp, uap->cbuf, uap->nbyte,
			(off_t)-1, 0, retval);
		wrote_some = *retval > 0;
	}
	if (wrote_some)
	        FUNC5(p, fd, fp);
	else
	        FUNC4(p, fd, fp, 0);
	return(error);
}
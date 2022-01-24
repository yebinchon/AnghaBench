#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ user_ssize_t ;
typedef  int /*<<< orphan*/ * uio_t ;
typedef  int /*<<< orphan*/  uguard ;
struct user_iovec {int dummy; } ;
struct proc {int dummy; } ;
struct guarded_writev_np_args {scalar_t__ iovcnt; int /*<<< orphan*/  fd; int /*<<< orphan*/  guard; int /*<<< orphan*/  iovp; } ;
struct guarded_fileproc {int dummy; } ;
struct fileproc {int f_flag; } ;
typedef  int /*<<< orphan*/  guardid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EBADF ; 
 int EINVAL ; 
 int ENOMEM ; 
 int FWRITE ; 
 struct fileproc* FUNC1 (struct guarded_fileproc*) ; 
 scalar_t__ FUNC2 (struct proc*) ; 
 scalar_t__ UIO_MAXIOV ; 
 int /*<<< orphan*/  UIO_USERSPACE32 ; 
 int /*<<< orphan*/  UIO_USERSPACE64 ; 
 int /*<<< orphan*/  UIO_WRITE ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,struct user_iovec*) ; 
 int /*<<< orphan*/  fd ; 
 int /*<<< orphan*/  FUNC5 (struct proc*,int /*<<< orphan*/ ,struct fileproc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct proc*,int /*<<< orphan*/ ,struct fileproc*) ; 
 int FUNC7 (struct proc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct guarded_fileproc**,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 struct user_iovec* FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (struct proc*,struct fileproc*,int /*<<< orphan*/ *,scalar_t__*) ; 

int
FUNC13(struct proc *p, struct guarded_writev_np_args *uap, user_ssize_t *retval)
{
	uio_t auio = NULL;
	int error;
	struct fileproc *fp;
	struct user_iovec *iovp;
	guardid_t uguard;
	struct guarded_fileproc *gfp;
	bool wrote_some = false;

	FUNC0(fd, uap->fd);

	/* Verify range bedfore calling uio_create() */
	if (uap->iovcnt <= 0 || uap->iovcnt > UIO_MAXIOV)
		return (EINVAL);

	/* allocate a uio large enough to hold the number of iovecs passed */
	auio = FUNC9(uap->iovcnt, 0,
				  (FUNC2(p) ? UIO_USERSPACE64 : UIO_USERSPACE32),
				  UIO_WRITE);
				  
	/* get location of iovecs within the uio.  then copyin the iovecs from
	 * user space.
	 */
	iovp = FUNC11(auio);
	if (iovp == NULL) {
		error = ENOMEM;
		goto ExitThisRoutine;
	}
	error = FUNC4(uap->iovp,
		FUNC2(p) ? UIO_USERSPACE64 : UIO_USERSPACE32,
		uap->iovcnt, iovp);
	if (error) {
		goto ExitThisRoutine;
	}
	
	/* finalize uio_t for use and do the IO 
	 */
	error = FUNC8(auio);
	if (error) {
		goto ExitThisRoutine;
	}

	if ((error = FUNC3(uap->guard, &uguard, sizeof (uguard))) != 0)
		goto ExitThisRoutine;

	error = FUNC7(p, uap->fd, uguard, &gfp, 0);
	if (error)
		goto ExitThisRoutine;

	fp = FUNC1(gfp);
	if ((fp->f_flag & FWRITE) == 0) {
		error = EBADF;
	} else {
		error = FUNC12(p, fp, auio, retval);
		wrote_some = *retval > 0;
	}
	
	if (wrote_some)
	        FUNC6(p, uap->fd, fp);
	else
	        FUNC5(p, uap->fd, fp, 0);
ExitThisRoutine:
	if (auio != NULL) {
		FUNC10(auio);
	}
	return (error);
}
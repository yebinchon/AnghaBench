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
typedef  int /*<<< orphan*/  uio_t ;
struct vfs_context {int /*<<< orphan*/  vc_ucred; } ;
struct proc {int dummy; } ;
struct fileproc {int /*<<< orphan*/  f_cred; } ;

/* Variables and functions */
 int EINTR ; 
 int ERESTART ; 
 int EWOULDBLOCK ; 
 int /*<<< orphan*/  FUNC0 (struct proc*,struct fileproc*,int) ; 
 int FUNC1 (struct fileproc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vfs_context*) ; 
 int FUNC2 (struct proc*,struct fileproc**,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 struct vfs_context* FUNC4 () ; 

int
FUNC5(struct proc *p, int fdes, uio_t uio, user_ssize_t *retval)
{
	struct fileproc *fp;
	int error;
	user_ssize_t count;
	struct vfs_context context = *FUNC4();

	if ( (error = FUNC2(p, &fp, fdes, 0)) )
	        return (error);

	count = FUNC3(uio);

	context.vc_ucred = fp->f_cred;

	error = FUNC1(fp, uio, 0, &context);

	if (error) {
	        if (FUNC3(uio) != count && (error == ERESTART ||
						error == EINTR || error == EWOULDBLOCK))
		        error = 0;
	}
	*retval = count - FUNC3(uio);

	FUNC0(p, fp, fdes);

	return (error);
}
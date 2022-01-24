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
struct vnode {int dummy; } ;
struct fpathconf_args {int fd; int /*<<< orphan*/  name; } ;
struct fileproc {int f_type; scalar_t__ f_data; } ;
typedef  int /*<<< orphan*/  proc_t ;
typedef  int /*<<< orphan*/  int32_t ;
typedef  int file_type_t ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  ARG_VNODE1 ; 
 int /*<<< orphan*/  FUNC0 (int,int,...) ; 
#define  DTYPE_PIPE 130 
#define  DTYPE_SOCKET 129 
#define  DTYPE_VNODE 128 
 int EINVAL ; 
 int /*<<< orphan*/  PIPE_BUF ; 
 int /*<<< orphan*/  _PC_PIPE_BUF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,struct fileproc*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,struct fileproc**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (struct vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC6 (struct vnode*) ; 
 int /*<<< orphan*/  vnpath ; 

int
FUNC7(proc_t p, struct fpathconf_args *uap, int32_t *retval)
{
	int fd = uap->fd;
	struct fileproc *fp;
	struct vnode *vp;
	int error = 0;
	file_type_t type;
	caddr_t data;


	FUNC0(fd, uap->fd);
	if ( (error = FUNC2(p, fd, &fp, 0)) )
		return(error);
	type = fp->f_type;
	data = fp->f_data;

	switch (type) {

	case DTYPE_SOCKET:
		if (uap->name != _PC_PIPE_BUF) {
			error = EINVAL;
			goto out;
		}
		*retval = PIPE_BUF;
		error = 0;
		goto out;

	case DTYPE_PIPE:
		if (uap->name != _PC_PIPE_BUF) {
			error = EINVAL;
			goto out;
		}
		*retval = PIPE_BUF;
		error = 0;
		goto out;

	case DTYPE_VNODE:
		vp = (struct vnode *)data;

		if ( (error = FUNC5(vp)) == 0) {
		        FUNC0(vnpath, vp, ARG_VNODE1);

			error = FUNC4(vp, uap->name, retval, FUNC3());

			(void)FUNC6(vp);
		}
		goto out;

	default:
		error = EINVAL;
		goto out;

	}
	/*NOTREACHED*/
out:
	FUNC1(p, fd, fp, 0);
	return(error);
}
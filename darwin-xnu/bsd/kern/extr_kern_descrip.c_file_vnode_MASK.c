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
struct fileproc {scalar_t__ f_type; scalar_t__ f_data; } ;
typedef  int /*<<< orphan*/  proc_t ;

/* Variables and functions */
 scalar_t__ DTYPE_VNODE ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,struct fileproc*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,struct fileproc**,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int
FUNC5(int fd, struct vnode **vpp)
{
	proc_t p = FUNC0();
	struct fileproc *fp;
	int error;

	FUNC3(p);
	if ( (error = FUNC2(p, fd, &fp, 1)) ) {
		FUNC4(p);
		return(error);
	}
	if (fp->f_type != DTYPE_VNODE) {
		FUNC1(p, fd, fp,1);
		FUNC4(p);
		return(EINVAL);
	}
	if (vpp != NULL)
		*vpp = (struct vnode *)fp->f_data;
	FUNC4(p);

	return(0);
}
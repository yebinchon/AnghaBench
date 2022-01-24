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
typedef  int /*<<< orphan*/  vnode_t ;
typedef  int /*<<< orphan*/  vfs_context_t ;
struct fileproc {int dummy; } ;
typedef  int /*<<< orphan*/  proc_t ;

/* Variables and functions */
 int /*<<< orphan*/  NULLVP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,struct fileproc*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,struct fileproc**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

int
FUNC4(vfs_context_t ctx, int fd, vnode_t *vpp)
{
	int error;
	vnode_t vp;
	struct fileproc *fp;
	proc_t p = FUNC2(ctx);

	*vpp =  NULLVP;

	error = FUNC1(p, fd, &fp, &vp);
	if (error)
		return (error);

	error = FUNC3(vp);
	if (error) {
		(void)FUNC0(p, fd, fp, 0);
		return (error);
	}

	(void)FUNC0(p, fd, fp, 0);
	*vpp = vp;
	return (error);
}
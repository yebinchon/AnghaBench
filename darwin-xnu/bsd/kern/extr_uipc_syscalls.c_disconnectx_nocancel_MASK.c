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
struct socket {int dummy; } ;
struct proc {int dummy; } ;
struct disconnectx_args {int s; int /*<<< orphan*/  cid; int /*<<< orphan*/  aid; } ;

/* Variables and functions */
 int EBADF ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,struct socket**) ; 
 int FUNC2 (struct socket*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct proc *p, struct disconnectx_args *uap, int *retval)
{
#pragma unused(p, retval)
	struct socket *so;
	int fd = uap->s;
	int error;

	error = FUNC1(fd, &so);
	if (error != 0)
		return (error);
	if (so == NULL) {
		error = EBADF;
		goto out;
	}

	error = FUNC2(so, uap->aid, uap->cid);
out:
	FUNC0(fd);
	return (error);
}
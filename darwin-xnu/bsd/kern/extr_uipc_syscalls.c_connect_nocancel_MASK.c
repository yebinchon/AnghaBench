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
struct socket {scalar_t__ so_type; } ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
struct connect_nocancel_args {int s; int namelen; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  ss ;
typedef  int /*<<< orphan*/  proc_t ;
typedef  int /*<<< orphan*/  int32_t ;
typedef  int boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int EBADF ; 
 int EINTR ; 
 int ERESTART ; 
 int /*<<< orphan*/  FUNC1 (struct sockaddr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_SONAME ; 
 struct sockaddr* FUNC2 (struct sockaddr_storage*) ; 
 scalar_t__ SOCK_DGRAM ; 
 int FUNC3 (struct socket*,struct sockaddr*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int,struct socket**) ; 
 int FUNC6 (struct socket*,struct sockaddr**,int /*<<< orphan*/ ,int,int) ; 
 int FUNC7 (struct socket*,struct sockaddr_storage*,int /*<<< orphan*/ ,int,int) ; 

int
FUNC8(proc_t p, struct connect_nocancel_args *uap, int32_t *retval)
{
#pragma unused(p, retval)
	struct socket *so;
	struct sockaddr_storage ss;
	struct sockaddr *sa = NULL;
	int error;
	int fd = uap->s;
	boolean_t dgram;

	FUNC0(fd, uap->s);
	error = FUNC5(fd, &so);
	if (error != 0)
		return (error);
	if (so == NULL) {
		error = EBADF;
		goto out;
	}

	/*
	 * Ask getsockaddr{_s} to not translate AF_UNSPEC to AF_INET
	 * if this is a datagram socket; translate for other types.
	 */
	dgram = (so->so_type == SOCK_DGRAM);

	/* Get socket address now before we obtain socket lock */
	if (uap->namelen > sizeof (ss)) {
		error = FUNC6(so, &sa, uap->name, uap->namelen, !dgram);
	} else {
		error = FUNC7(so, &ss, uap->name, uap->namelen, !dgram);
		if (error == 0)
			sa = (struct sockaddr *)&ss;
	}
	if (error != 0)
		goto out;

	error = FUNC3(so, sa);

	if (sa != NULL && sa != FUNC2(&ss))
		FUNC1(sa, M_SONAME);
	if (error == ERESTART)
		error = EINTR;
out:
	FUNC4(fd);
	return (error);
}
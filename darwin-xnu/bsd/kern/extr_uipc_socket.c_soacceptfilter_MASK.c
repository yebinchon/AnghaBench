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
struct socket {int /*<<< orphan*/  so_state; } ;
struct sockaddr {int dummy; } ;

/* Variables and functions */
 int ECONNABORTED ; 
 int EJUSTRETURN ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  SHUTDOWN_SOCKET_LEVEL_DISCONNECT_INTERNAL ; 
 int /*<<< orphan*/  SS_NOFDREF ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (struct socket*,struct socket*,struct sockaddr*,struct sockaddr*) ; 
 int /*<<< orphan*/  FUNC2 (struct sockaddr*) ; 
 int /*<<< orphan*/  FUNC3 (struct socket*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct socket*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct socket*) ; 
 scalar_t__ FUNC6 (struct socket*,struct sockaddr**,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct socket*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC8(struct socket *so, struct socket *head)
{
	struct sockaddr *local = NULL, *remote = NULL;
	int error = 0;

	/*
	 * Hold the lock even if this socket has not been made visible
	 * to the filter(s).  For sockets with global locks, this protects
	 * against the head or peer going away
	 */
	FUNC3(so, 1);
	if (FUNC6(so, &remote, 1) != 0 ||
	    FUNC6(so, &local, 0) != 0) {
		so->so_state &= ~SS_NOFDREF;
		FUNC4(so, 1);
		FUNC5(so);
		/* Out of resources; try it again next time */
		error = ECONNABORTED;
		goto done;
	}

	error = FUNC1(head, so, local, remote);

	/*
	 * If we get EJUSTRETURN from one of the filters, mark this socket
	 * as inactive and return it anyway.  This newly accepted socket
	 * will be disconnected later before we hand it off to the caller.
	 */
	if (error == EJUSTRETURN) {
		error = 0;
		(void) FUNC7(FUNC0(), so,
		    SHUTDOWN_SOCKET_LEVEL_DISCONNECT_INTERNAL, FALSE);
	}

	if (error != 0) {
		/*
		 * This may seem like a duplication to the above error
		 * handling part when we return ECONNABORTED, except
		 * the following is done while holding the lock since
		 * the socket has been exposed to the filter(s) earlier.
		 */
		so->so_state &= ~SS_NOFDREF;
		FUNC4(so, 1);
		FUNC5(so);
		/* Propagate socket filter's error code to the caller */
	} else {
		FUNC4(so, 1);
	}
done:
	/* Callee checks for NULL pointer */
	FUNC2(remote);
	FUNC2(local);
	return (error);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct sockaddr {int sa_len; } ;
typedef  TYPE_1__* socket_t ;
typedef  int errno_t ;
struct TYPE_6__ {int so_state; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOTCONN ; 
 int /*<<< orphan*/  FUNC0 (struct sockaddr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_SONAME ; 
 int SS_ISCONFIRMING ; 
 int SS_ISCONNECTED ; 
 int /*<<< orphan*/  FUNC1 (struct sockaddr*,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int FUNC4 (TYPE_1__*,struct sockaddr**,int) ; 

errno_t
FUNC5(socket_t sock, struct sockaddr	*peername, int peernamelen)
{
	int error;
	struct sockaddr	*sa = NULL;

	if (sock == NULL || peername == NULL || peernamelen < 0)
		return (EINVAL);

	FUNC2(sock, 1);
	if (!(sock->so_state & (SS_ISCONNECTED|SS_ISCONFIRMING))) {
		FUNC3(sock, 1);
		return (ENOTCONN);
	}
	error = FUNC4(sock, &sa, 1);
	FUNC3(sock, 1);
	if (error == 0) {
		if (peernamelen > sa->sa_len)
			peernamelen = sa->sa_len;
		FUNC1(peername, sa, peernamelen);
		FUNC0(sa, M_SONAME);
	}
	return (error);
}
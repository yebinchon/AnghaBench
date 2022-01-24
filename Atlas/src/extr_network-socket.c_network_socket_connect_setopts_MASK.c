#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  val ;
typedef  int /*<<< orphan*/  network_socket_retval_t ;
struct TYPE_7__ {TYPE_4__* src; int /*<<< orphan*/  fd; } ;
typedef  TYPE_2__ network_socket ;
struct TYPE_6__ {int /*<<< orphan*/  common; } ;
struct TYPE_8__ {int /*<<< orphan*/  len; TYPE_1__ addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  G_STRLOC ; 
 int /*<<< orphan*/  IPPROTO_IP ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  IP_TOS ; 
 int /*<<< orphan*/  NETWORK_SOCKET_SUCCESS ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_KEEPALIVE ; 
 int /*<<< orphan*/  TCP_NODELAY ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 

network_socket_retval_t FUNC6(network_socket *sock) {
#ifdef WIN32
	char val = 1;	/* Win32 setsockopt wants a const char* instead of the UNIX void*...*/
#else
	int val = 1;
#endif
	/**
	 * set the same options as the mysql client 
	 */
#ifdef IP_TOS
	val = 8;
	setsockopt(sock->fd, IPPROTO_IP,     IP_TOS, &val, sizeof(val));
#endif
	val = 1;
	FUNC5(sock->fd, IPPROTO_TCP,    TCP_NODELAY, &val, sizeof(val) );
	val = 1;
	FUNC5(sock->fd, SOL_SOCKET, SO_KEEPALIVE, &val, sizeof(val) );

	/* the listening side may be INADDR_ANY, let's get which address the client really connected to */
	if (-1 == FUNC2(sock->fd, &sock->src->addr.common, &(sock->src->len))) {
		FUNC0("%s: getsockname() failed: %s (%d)",
				G_STRLOC,
				FUNC1(errno),
				errno);
		FUNC4(sock->src);
	} else if (FUNC3(sock->src)) {
		FUNC0("%s: network_address_refresh_name() failed",
				G_STRLOC);
		FUNC4(sock->src);
	}

	return NETWORK_SOCKET_SUCCESS;
}
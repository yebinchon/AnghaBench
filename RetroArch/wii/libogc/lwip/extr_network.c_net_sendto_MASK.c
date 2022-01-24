#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16_t ;
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_port; TYPE_1__ sin_addr; } ;
struct sockaddr {int dummy; } ;
struct netsocket {int /*<<< orphan*/  conn; } ;
struct ip_addr {int /*<<< orphan*/  addr; } ;
typedef  int /*<<< orphan*/  socklen_t ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 scalar_t__ EINVAL ; 
 scalar_t__ ENOTSOCK ; 
 scalar_t__ ERR_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  SOCKETS_DEBUG ; 
 struct netsocket* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct ip_addr*) ; 
 scalar_t__ FUNC3 (scalar_t__,void const*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct ip_addr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,struct ip_addr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

s32 FUNC8(s32 s,const void *data,s32 len,u32 flags,struct sockaddr *to,socklen_t tolen)
{
	struct netsocket *sock;
	struct ip_addr remote_addr, addr;
	u16_t remote_port, port = 0;
	s32 ret,connected;

	FUNC0(SOCKETS_DEBUG, ("net_sendto(%d, data=%p, size=%d, flags=0x%x)\n", s, data, len, flags));
	if(data==NULL || len<=0) return -EINVAL;

	sock = FUNC1(s);
	if (!sock) return -ENOTSOCK;

	/* get the peer if currently connected */
	connected = (FUNC6(sock->conn, &addr, &port) == ERR_OK);

	remote_addr.addr = ((struct sockaddr_in *)to)->sin_addr.s_addr;
	remote_port = ((struct sockaddr_in *)to)->sin_port;

	FUNC0(SOCKETS_DEBUG, ("net_sendto(%d, data=%p, size=%d, flags=0x%x to=", s, data, len, flags));
	FUNC2(SOCKETS_DEBUG, &remote_addr);
	FUNC0(SOCKETS_DEBUG, (" port=%u\n", FUNC7(remote_port)));

	FUNC4(sock->conn, &remote_addr, FUNC7(remote_port));

	ret = FUNC3(s, data, len, flags);

	/* reset the remote address and port number
	of the connection */
	if (connected)
		FUNC4(sock->conn, &addr, port);
	else
		FUNC5(sock->conn);
	return ret;
}
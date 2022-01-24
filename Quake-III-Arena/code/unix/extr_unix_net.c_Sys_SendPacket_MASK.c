#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
struct TYPE_5__ {scalar_t__ type; } ;
typedef  TYPE_1__ netadr_t ;
typedef  int /*<<< orphan*/  addr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_FATAL ; 
 scalar_t__ NA_BROADCAST ; 
 scalar_t__ NA_BROADCAST_IPX ; 
 scalar_t__ NA_IP ; 
 scalar_t__ NA_IPX ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,struct sockaddr_in*) ; 
 int ip_socket ; 
 int ipx_socket ; 
 int FUNC5 (int,void const*,int,int /*<<< orphan*/ ,struct sockaddr*,int) ; 

void	FUNC6( int length, const void *data, netadr_t to )
{
	int		ret;
	struct sockaddr_in	addr;
	int		net_socket;

	if (to.type == NA_BROADCAST)
	{
		net_socket = ip_socket;
	}
	else if (to.type == NA_IP)
	{
		net_socket = ip_socket;
	}
	else if (to.type == NA_IPX)
	{
		net_socket = ipx_socket;
	}
	else if (to.type == NA_BROADCAST_IPX)
	{
		net_socket = ipx_socket;
	}
	else {
		FUNC0 (ERR_FATAL, "NET_SendPacket: bad address type");
		return;
	}

	if (!net_socket)
		return;

	FUNC4 (&to, &addr);

	ret = FUNC5 (net_socket, data, length, 0, (struct sockaddr *)&addr, sizeof(addr) );
	if (ret == -1)
	{
		FUNC1 ("NET_SendPacket ERROR: %s to %s\n", FUNC3(),
				FUNC2 (to));
	}
}
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
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_family; scalar_t__ sin_port; TYPE_1__ sin_addr; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  qboolean ;
typedef  int /*<<< orphan*/  i ;
typedef  int /*<<< orphan*/  address ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FIONBIO ; 
 int /*<<< orphan*/  INADDR_ANY ; 
 int /*<<< orphan*/  IPPROTO_UDP ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  PF_INET ; 
 int PORT_ANY ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_BROADCAST ; 
 int /*<<< orphan*/  FUNC3 (char*,struct sockaddr*) ; 
 int FUNC4 (int,void*,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (short) ; 
 int FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  qtrue ; 
 int FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC10 (char *net_interface, int port)
{
	int newsocket;
	struct sockaddr_in address;
	qboolean _qtrue = qtrue;
	int	i = 1;

	if ( net_interface ) {
		FUNC0("Opening IP socket: %s:%i\n", net_interface, port );
	} else {
		FUNC0("Opening IP socket: localhost:%i\n", port );
	}

	if ((newsocket = FUNC9 (PF_INET, SOCK_DGRAM, IPPROTO_UDP)) == -1)
	{
		FUNC0 ("ERROR: UDP_OpenSocket: socket: %s", FUNC1());
		return 0;
	}

	// make it non-blocking
	if (FUNC7 (newsocket, FIONBIO, &_qtrue) == -1)
	{
		FUNC0 ("ERROR: UDP_OpenSocket: ioctl FIONBIO:%s\n", FUNC1());
		return 0;
	}

	// make it broadcast capable
	if (FUNC8(newsocket, SOL_SOCKET, SO_BROADCAST, (char *)&i, sizeof(i)) == -1)
	{
		FUNC0 ("ERROR: UDP_OpenSocket: setsockopt SO_BROADCAST:%s\n", FUNC1());
		return 0;
	}

	if (!net_interface || !net_interface[0] || !FUNC2(net_interface, "localhost"))
		address.sin_addr.s_addr = INADDR_ANY;
	else
		FUNC3 (net_interface, (struct sockaddr *)&address);

	if (port == PORT_ANY)
		address.sin_port = 0;
	else
		address.sin_port = FUNC6((short)port);

	address.sin_family = AF_INET;

	if( FUNC4 (newsocket, (void *)&address, sizeof(address)) == -1)
	{
		FUNC0 ("ERROR: UDP_OpenSocket: bind: %s\n", FUNC1());
		FUNC5 (newsocket);
		return 0;
	}

	return newsocket;
}
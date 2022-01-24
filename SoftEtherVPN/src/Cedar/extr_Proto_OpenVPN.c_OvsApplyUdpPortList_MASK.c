#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_6__ {int /*<<< orphan*/  ListenIP; } ;
struct TYPE_5__ {TYPE_3__* UdpListener; } ;
typedef  TYPE_1__ OPENVPN_SERVER_UDP ;
typedef  int /*<<< orphan*/  LIST ;
typedef  int /*<<< orphan*/  IP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char*,int) ; 

void FUNC7(OPENVPN_SERVER_UDP *u, char *port_list, IP *listen_ip)
{
	LIST *o;
	UINT i;
	// Validate arguments
	if (u == NULL)
	{
		return;
	}

	FUNC2(u->UdpListener);

	if (u->UdpListener != NULL && listen_ip != NULL)
	{
		FUNC1(&u->UdpListener->ListenIP, listen_ip, sizeof(IP));
	}

	o = FUNC6(port_list, true);

	for (i = 0;i < FUNC4(o);i++)
	{
		UINT port = *((UINT *)FUNC3(o, i));

		if (port >= 1 && port <= 65535)
		{
			FUNC0(u->UdpListener, port);
		}
	}

	FUNC5(o);
}
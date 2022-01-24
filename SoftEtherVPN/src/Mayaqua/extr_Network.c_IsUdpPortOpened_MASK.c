#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_5__ {int HasError; scalar_t__ Port; int /*<<< orphan*/  IpAddress; int /*<<< orphan*/ * Sock; } ;
typedef  TYPE_1__ UDPLISTENER_SOCK ;
struct TYPE_6__ {int /*<<< orphan*/  SockList; } ;
typedef  TYPE_2__ UDPLISTENER ;
typedef  int /*<<< orphan*/  IP ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

bool FUNC4(UDPLISTENER *u, IP *server_ip, UINT port)
{
	UINT i;
	// Validate arguments
	if (u == NULL || port == 0)
	{
		return false;
	}

	if (server_ip != NULL)
	{
		for (i = 0;i < FUNC3(u->SockList);i++)
		{
			UDPLISTENER_SOCK *us = FUNC2(u->SockList, i);

			if (us->Sock != NULL && us->HasError == false)
			{
				if (us->Port == port)
				{
					if (FUNC0(server_ip, &us->IpAddress) == 0)
					{
						return true;
					}
				}
			}
		}
	}

	for (i = 0;i < FUNC3(u->SockList);i++)
	{
		UDPLISTENER_SOCK *us = FUNC2(u->SockList, i);

		if (us->Sock != NULL && us->HasError == false)
		{
			if (us->Port == port)
			{
				if (FUNC1(&us->IpAddress))
				{
					return true;
				}
			}
		}
	}

	return false;
}
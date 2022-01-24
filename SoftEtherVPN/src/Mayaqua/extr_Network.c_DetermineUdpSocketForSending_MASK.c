#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_8__ {scalar_t__ SrcPort; int /*<<< orphan*/  DstIP; int /*<<< orphan*/  SrcIP; } ;
typedef  TYPE_1__ UDPPACKET ;
struct TYPE_9__ {int HasError; scalar_t__ Port; int /*<<< orphan*/  IpAddress; int /*<<< orphan*/ * Sock; } ;
typedef  TYPE_2__ UDPLISTENER_SOCK ;
struct TYPE_10__ {int /*<<< orphan*/  SockList; } ;
typedef  TYPE_3__ UDPLISTENER ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

UDPLISTENER_SOCK *FUNC6(UDPLISTENER *u, UDPPACKET *p)
{
	UINT i;
	// Validate arguments
	if (u == NULL || p == NULL)
	{
		return NULL;
	}

	for (i = 0;i < FUNC5(u->SockList);i++)
	{
		UDPLISTENER_SOCK *us = FUNC4(u->SockList, i);

		if (us->Sock != NULL && us->HasError == false)
		{
			if (us->Port == p->SrcPort)
			{
				if (FUNC0(&us->IpAddress, &p->SrcIP) == 0)
				{
					return us;
				}
			}
		}
	}

	for (i = 0;i < FUNC5(u->SockList);i++)
	{
		UDPLISTENER_SOCK *us = FUNC4(u->SockList, i);

		if (us->Sock != NULL && us->HasError == false)
		{
			if (us->Port == p->SrcPort)
			{
				if (FUNC3(&us->IpAddress))
				{
					if ((FUNC1(&p->DstIP) && FUNC1(&us->IpAddress)) ||
						(FUNC2(&p->DstIP) && FUNC2(&us->IpAddress)))
					{
						return us;
					}
				}
			}
		}
	}

	return NULL;
}
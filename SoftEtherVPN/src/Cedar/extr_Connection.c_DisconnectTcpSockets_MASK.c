#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_12__ {scalar_t__ Protocol; TYPE_3__* Tcp; } ;
struct TYPE_11__ {int /*<<< orphan*/  TcpSockList; } ;
struct TYPE_10__ {TYPE_1__* Sock; } ;
struct TYPE_9__ {int /*<<< orphan*/  SendSize; } ;
typedef  TYPE_2__ TCPSOCK ;
typedef  TYPE_3__ TCP ;
typedef  TYPE_4__ CONNECTION ;

/* Variables and functions */
 scalar_t__ CONNECTION_TCP ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_2__** FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(CONNECTION *c)
{
	UINT i, num;
	TCP *tcp;
	TCPSOCK **tcpsocks;
	// Validate arguments
	if (c == NULL)
	{
		return;
	}
	if (c->Protocol != CONNECTION_TCP)
	{
		return;
	}

	tcp = c->Tcp;
	FUNC5(tcp->TcpSockList);
	{
		tcpsocks = FUNC6(tcp->TcpSockList);
		num = FUNC4(tcp->TcpSockList);
		FUNC1(tcp->TcpSockList);
	}
	FUNC7(tcp->TcpSockList);

	if (num != 0)
	{
		FUNC0("--- SOCKET STATUS ---\n");
		for (i = 0;i < num;i++)
		{
			TCPSOCK *ts = tcpsocks[i];
			FUNC0(" SOCK %2u: %u\n", i, ts->Sock->SendSize);
			FUNC3(ts);
		}
	}

	FUNC2(tcpsocks);
}
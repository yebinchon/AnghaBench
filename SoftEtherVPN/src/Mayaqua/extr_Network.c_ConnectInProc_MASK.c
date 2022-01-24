#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_8__ {scalar_t__ Type; int ListenMode; int CancelAccept; int Disconnecting; int /*<<< orphan*/  InProcAcceptEvent; int /*<<< orphan*/  InProcAcceptQueue; } ;
typedef  TYPE_1__ SOCK ;
typedef  int /*<<< orphan*/  IP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__**,TYPE_1__**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ SOCK_INPROC ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

SOCK *FUNC6(SOCK *listen_sock, IP *client_ip, UINT client_port, IP *server_ip, UINT server_port)
{
	SOCK *ss, *sc;
	bool ok = false;
	// Validate arguments
	if (listen_sock == NULL || listen_sock->Type != SOCK_INPROC || listen_sock->ListenMode == false)
	{
		return NULL;
	}

	FUNC2(&sc, &ss, client_ip, client_port, server_ip, server_port);

	FUNC1(listen_sock->InProcAcceptQueue);
	{
		if (listen_sock->CancelAccept == false && listen_sock->Disconnecting == false)
		{
			FUNC0(listen_sock->InProcAcceptQueue, ss);

			ok = true;
		}
	}
	FUNC5(listen_sock->InProcAcceptQueue);

	if (ok == false)
	{
		FUNC3(ss);
		FUNC3(sc);
		return NULL;
	}

	FUNC4(listen_sock->InProcAcceptEvent);

	return sc;
}
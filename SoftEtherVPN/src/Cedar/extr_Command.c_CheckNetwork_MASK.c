#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  c ;
typedef  int UINT ;
struct TYPE_14__ {TYPE_1__* ListenSocket; } ;
struct TYPE_13__ {int LocalPort; } ;
typedef  int /*<<< orphan*/  THREAD ;
typedef  int /*<<< orphan*/  SOCK_EVENT ;
typedef  TYPE_1__ SOCK ;
typedef  TYPE_2__ CHECK_NETWORK_1 ;

/* Variables and functions */
 int /*<<< orphan*/  CheckNetworkListenThread ; 
 TYPE_1__* FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__**) ; 
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int FUNC7 (TYPE_1__*,int*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int SOCK_LATER ; 
 int FUNC11 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,int) ; 
 TYPE_1__** FUNC16 (int) ; 

bool FUNC17()
{
	CHECK_NETWORK_1 c;
	THREAD *t;
	SOCK *listen_socket;
	UINT port;
	UINT i, num;
	bool ok = true;
	SOCK **socks;
	SOCK_EVENT *se = FUNC4();

	FUNC15(&c, sizeof(c));
	t = FUNC5(CheckNetworkListenThread, &c);
	FUNC14(t);

	listen_socket = c.ListenSocket;

	port = listen_socket->LocalPort;

	num = 8;
	socks = FUNC16(sizeof(SOCK *) * num);
	for (i = 0;i < num;i++)
	{
		socks[i] = FUNC0("localhost", port);
		if (socks[i] == NULL)
		{
			FUNC6("Connect Failed. (%u)\n", i);
			ok = false;
			num = i;
			break;
		}
		if (FUNC11(socks[i], NULL, NULL) == false)
		{
			FUNC8(socks[i]);
			FUNC6("Connect Failed. (%u)\n", i);
			ok = false;
			num = i;
			break;
		}

		FUNC3(socks[i], se);
	}

	if (ok)
	{
		while (true)
		{
			UINT i;
			bool end = false;
			bool all_blocked = true;

			for (i = 0;i < num;i++)
			{
				UINT n;
				UINT ret;

				n = 0;
				ret = FUNC7(socks[i], &n, sizeof(UINT), true);
				if (ret == 0)
				{
					FUNC6("Recv Failed (Disconnected).\n", ret);
					end = true;
					ok = false;
				}
				if (ret != SOCK_LATER)
				{
					all_blocked = false;
				}

				if (n >= 128)
				{
					end = true;
				}
			}

			if (end)
			{
				break;
			}

			if (all_blocked)
			{
				FUNC12(se, INFINITE);
			}
		}
	}

	for (i = 0;i < num;i++)
	{
		FUNC1(socks[i]);
		FUNC8(socks[i]);
	}
	FUNC2(socks);

	FUNC1(listen_socket);

	FUNC13(t, INFINITE);
	FUNC10(t);

	FUNC8(listen_socket);

	FUNC9(se);

	return ok;
}
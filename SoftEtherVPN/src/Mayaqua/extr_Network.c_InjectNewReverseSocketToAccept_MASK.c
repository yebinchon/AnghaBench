#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_7__ {int CancelAccept; int Disconnecting; int ServerMode; int IsReverseAcceptedSocket; int /*<<< orphan*/  ReverseAcceptEvent; int /*<<< orphan*/  ReverseAcceptQueue; int /*<<< orphan*/  RemotePort; int /*<<< orphan*/  RemoteIP; } ;
typedef  TYPE_1__ SOCK ;
typedef  int /*<<< orphan*/  IP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7(SOCK *listen_sock, SOCK *s, IP *client_ip, UINT client_port)
{
	bool ok = false;
	// Validate arguments
	if (listen_sock == NULL || s == NULL)
	{
		return;
	}

	FUNC3(listen_sock->ReverseAcceptQueue);
	{
		if (listen_sock->CancelAccept == false && listen_sock->Disconnecting == false)
		{
			FUNC2(listen_sock->ReverseAcceptQueue, s);

			ok = true;

			s->ServerMode = true;
			s->IsReverseAcceptedSocket = true;

			FUNC0(&s->RemoteIP, client_ip, sizeof(IP));
			s->RemotePort = client_port;
		}
	}
	FUNC6(listen_sock->ReverseAcceptQueue);

	if (ok == false)
	{
		FUNC1(s);
		FUNC4(s);
	}
	else
	{
		FUNC5(listen_sock->ReverseAcceptEvent);
	}
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  hostname ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_9__ {int TcpMakeConnectionFailed; int TcpMakeConnectionSucceed; int /*<<< orphan*/ * Sock; int /*<<< orphan*/  NatTcpCancelFlag; TYPE_1__* v; int /*<<< orphan*/  DestPort; int /*<<< orphan*/  DestIp; } ;
struct TYPE_8__ {int /*<<< orphan*/  ref; } ;
struct TYPE_7__ {TYPE_2__* SockEvent; } ;
typedef  int /*<<< orphan*/  THREAD ;
typedef  TYPE_2__ SOCK_EVENT ;
typedef  int /*<<< orphan*/  SOCK ;
typedef  TYPE_3__ NAT_ENTRY ;
typedef  int /*<<< orphan*/  IP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC9(THREAD *t, void *p)
{
	NAT_ENTRY *n = (NAT_ENTRY *)p;
	IP ip;
	char hostname[MAX_SIZE];
	UINT port_number;
	SOCK *sock;
	SOCK_EVENT *e;
	// Validate arguments
	if (n == NULL || t == NULL)
	{
		return;
	}

	FUNC8(&ip, n->DestIp);
	FUNC3(hostname, sizeof(hostname), &ip);
	port_number = n->DestPort;
	e = n->v->SockEvent;
	FUNC0(e->ref);

	// Notify the initialization completion
	FUNC5(t);

	// Attempt to connect to the TCP host
	FUNC2("NatTcpConnect Connecting to %s:%u\n", hostname, port_number);
	sock = FUNC1(hostname, port_number, 0, &n->NatTcpCancelFlag, NULL, NULL, false, true);
	if (sock == NULL)
	{
		// Connection failure
		n->TcpMakeConnectionFailed = true;
	}
	else
	{
		// Successful connection
		n->TcpMakeConnectionSucceed = true;
	}
	n->Sock = sock;
	FUNC4(sock, e);
	FUNC7(e);

	FUNC6(e);
}
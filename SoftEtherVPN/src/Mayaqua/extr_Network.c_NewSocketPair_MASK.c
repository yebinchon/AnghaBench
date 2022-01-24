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
typedef  void* UINT ;
struct TYPE_7__ {int Connected; int ServerMode; void* RemotePort; int /*<<< orphan*/  RemoteIP; void* LocalPort; int /*<<< orphan*/  LocalIP; } ;
typedef  int /*<<< orphan*/  TUBE ;
typedef  int /*<<< orphan*/  SOCK_EVENT ;
typedef  TYPE_1__ SOCK ;
typedef  int /*<<< orphan*/  IP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  INFINITE ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC10(SOCK **client, SOCK **server, IP *client_ip, UINT client_port, IP *server_ip, UINT server_port)
{
	IP iptmp;
	TUBE *t1, *t2;
	SOCK *sc, *ss;
	SOCK_EVENT *e1, *e2;
	// Validate arguments
	if (client == NULL || server == NULL)
	{
		return;
	}

	FUNC7(&iptmp, 127, 0, 0, 1);
	if (client_ip == NULL)
	{
		client_ip = &iptmp;
	}
	if (server_ip == NULL)
	{
		server_ip = &iptmp;
	}

	// Creating a tube
	FUNC3(&t1, &t2, 0);	// t1: C -> S,  t2: S -> C

	// Creating a socket event
	e1 = FUNC2();
	e2 = FUNC2();

	FUNC9(t1, e1);
	FUNC9(t2, e2);

	sc = FUNC1(t1, t2);
	ss = FUNC1(t2, t1);

	FUNC0(&sc->LocalIP, client_ip, sizeof(IP));
	sc->LocalPort = client_port;
	FUNC0(&sc->RemoteIP, server_ip, sizeof(IP));
	sc->RemotePort = server_port;

	FUNC0(&ss->LocalIP, server_ip, sizeof(IP));
	ss->LocalPort = server_port;
	FUNC0(&ss->RemoteIP, client_ip, sizeof(IP));
	ss->RemotePort = client_port;

	sc->Connected = true;
	sc->ServerMode = false;

	ss->Connected = true;
	ss->ServerMode = true;

	FUNC8(sc, INFINITE);
	FUNC8(ss, INFINITE);

	FUNC4(sc);
	FUNC4(ss);

	FUNC5(e1);
	FUNC5(e2);

	FUNC6(t1);
	FUNC6(t2);

	*client = sc;
	*server = ss;
}
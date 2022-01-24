#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT ;
struct TYPE_20__ {TYPE_2__* Server; } ;
struct TYPE_19__ {int /*<<< orphan*/  ConnectionList; } ;
struct TYPE_18__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  Type; int /*<<< orphan*/  ConnectedTick; int /*<<< orphan*/  Name; TYPE_1__* FirstSock; } ;
struct TYPE_17__ {int NumConnection; TYPE_3__* Connections; } ;
struct TYPE_16__ {int /*<<< orphan*/  Type; int /*<<< orphan*/  ConnectedTime; int /*<<< orphan*/  Name; int /*<<< orphan*/  Hostname; int /*<<< orphan*/  Port; int /*<<< orphan*/  Ip; } ;
struct TYPE_15__ {TYPE_6__* Cedar; } ;
struct TYPE_14__ {int /*<<< orphan*/  RemoteHostname; int /*<<< orphan*/  RemotePort; int /*<<< orphan*/  RemoteIP; } ;
typedef  TYPE_1__ SOCK ;
typedef  TYPE_2__ SERVER ;
typedef  TYPE_3__ RPC_ENUM_CONNECTION_ITEM ;
typedef  TYPE_4__ RPC_ENUM_CONNECTION ;
typedef  TYPE_5__ CONNECTION ;
typedef  TYPE_6__ CEDAR ;
typedef  TYPE_7__ ADMIN ;

/* Variables and functions */
 size_t ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC2 (int /*<<< orphan*/ ,size_t) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SERVER_ADMIN_ONLY ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,int) ; 
 TYPE_3__* FUNC11 (int) ; 

UINT FUNC12(ADMIN *a, RPC_ENUM_CONNECTION *t)
{
	SERVER *s = a->Server;
	CEDAR *c = s->Cedar;

	SERVER_ADMIN_ONLY;

	FUNC0(t);
	FUNC10(t, sizeof(RPC_ENUM_CONNECTION));

	FUNC5(c->ConnectionList);
	{
		UINT i;
		t->NumConnection = FUNC3(c->ConnectionList);
		t->Connections = FUNC11(sizeof(RPC_ENUM_CONNECTION_ITEM) * t->NumConnection);
		
		for (i = 0;i < t->NumConnection;i++)
		{
			RPC_ENUM_CONNECTION_ITEM *e = &t->Connections[i];
			CONNECTION *connection = FUNC2(c->ConnectionList, i);

			FUNC4(connection->lock);
			{
				SOCK *s = connection->FirstSock;

				if (s != NULL)
				{
					e->Ip = FUNC1(&s->RemoteIP);
					e->Port = s->RemotePort;
					FUNC6(e->Hostname, sizeof(e->Hostname), s->RemoteHostname);
				}

				FUNC6(e->Name, sizeof(e->Name), connection->Name);
				e->ConnectedTime = FUNC7(connection->ConnectedTick);
				e->Type = connection->Type;
			}
			FUNC8(connection->lock);
		}
	}
	FUNC9(c->ConnectionList);

	return ERR_NO_ERROR;
}
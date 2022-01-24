#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tt ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_18__ {TYPE_1__* Server; } ;
struct TYPE_17__ {int /*<<< orphan*/  ConnectionList; } ;
struct TYPE_16__ {int /*<<< orphan*/  ref; int /*<<< orphan*/  Name; } ;
struct TYPE_15__ {int /*<<< orphan*/  Name; } ;
struct TYPE_14__ {TYPE_4__* Cedar; } ;
typedef  TYPE_1__ SERVER ;
typedef  TYPE_2__ RPC_DISCONNECT_CONNECTION ;
typedef  TYPE_3__ CONNECTION ;
typedef  TYPE_4__ CEDAR ;
typedef  TYPE_5__ ADMIN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_INVALID_PARAMETER ; 
 int /*<<< orphan*/  ERR_NO_ERROR ; 
 int /*<<< orphan*/  ERR_OBJECT_NOT_FOUND ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  SERVER_ADMIN_ONLY ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int) ; 

UINT FUNC9(ADMIN *a, RPC_DISCONNECT_CONNECTION *t)
{
	SERVER *s = a->Server;
	CEDAR *c = s->Cedar;
	CONNECTION *connection;

	if (FUNC2(t->Name))
	{
		return ERR_INVALID_PARAMETER;
	}

	SERVER_ADMIN_ONLY;

	FUNC3(c->ConnectionList);
	{
		CONNECTION tt;
		FUNC8(&tt, sizeof(tt));
		tt.Name = t->Name;

		connection = FUNC5(c->ConnectionList, &tt);
		if (connection != NULL)
		{
			FUNC1(connection->ref);
		}
	}
	FUNC7(c->ConnectionList);

	if (connection == NULL)
	{
		return ERR_OBJECT_NOT_FOUND;
	}

	FUNC6(connection, true);

	FUNC4(connection);

	FUNC0(a, NULL, "LA_DISCONNECT_CONN", t->Name);

	return ERR_NO_ERROR;
}
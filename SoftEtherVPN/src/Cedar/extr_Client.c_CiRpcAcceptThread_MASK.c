#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  RpcConnectionList; } ;
struct TYPE_12__ {int /*<<< orphan*/  Thread; TYPE_1__* Sock; TYPE_3__* Client; } ;
struct TYPE_11__ {int /*<<< orphan*/  ref; } ;
typedef  int /*<<< orphan*/  THREAD ;
typedef  TYPE_1__ SOCK ;
typedef  TYPE_2__ CLIENT_RPC_CONNECTION ;
typedef  TYPE_3__ CLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

void FUNC11(THREAD *thread, void *param)
{
	CLIENT_RPC_CONNECTION *conn;
	CLIENT *c;
	SOCK *s;
	// Validate arguments
	if (thread == NULL || param == NULL)
	{
		return;
	}

	conn = (CLIENT_RPC_CONNECTION *)param;
	s = conn->Sock;
	c = conn->Client;
	FUNC1(s->ref);

	// Add to the RPC connection list
	FUNC6(c->RpcConnectionList);
	{
		FUNC0(c->RpcConnectionList, conn);
	}
	FUNC10(c->RpcConnectionList);

	FUNC7(thread);

	// Main process
	FUNC2(c, s);

	// Release from the connection list
	FUNC6(c->RpcConnectionList);
	{
		FUNC3(c->RpcConnectionList, conn);
	}
	FUNC10(c->RpcConnectionList);

	FUNC8(conn->Sock);
	FUNC9(conn->Thread);
	FUNC5(conn);

	FUNC4(s);
	FUNC8(s);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  rpc_mode ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_11__ {int /*<<< orphan*/ * Sock; } ;
struct TYPE_10__ {TYPE_2__* Rpc; } ;
struct TYPE_9__ {TYPE_1__* Sock; } ;
struct TYPE_8__ {int /*<<< orphan*/  RemotePort; int /*<<< orphan*/  RemoteIP; } ;
typedef  int /*<<< orphan*/  SOCK ;
typedef  TYPE_3__ REMOTE_CLIENT ;
typedef  TYPE_4__ NOTIFY_CLIENT ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int*,int,int) ; 
 TYPE_4__* FUNC5 (int) ; 

NOTIFY_CLIENT *FUNC6(REMOTE_CLIENT *rc)
{
	NOTIFY_CLIENT *n;
	SOCK *s;
	char tmp[MAX_SIZE];
	bool rpc_mode = false;
	UINT port;
	// Validate arguments
	if (rc == NULL || rc->Rpc == NULL || rc->Rpc->Sock == NULL)
	{
		return NULL;
	}

	// Connect
	FUNC2(tmp, sizeof(tmp), &rc->Rpc->Sock->RemoteIP);
	port = rc->Rpc->Sock->RemotePort;

	s = FUNC0(tmp, port);
	if (s == NULL)
	{
		return NULL;
	}

	rpc_mode = FUNC1(rpc_mode);
	if (FUNC4(s, &rpc_mode, sizeof(rpc_mode), false) == false)
	{
		FUNC3(s);
		return NULL;
	}

	n = FUNC5(sizeof(NOTIFY_CLIENT));
	n->Sock = s;

	return n;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  Lock; int /*<<< orphan*/  Sock; } ;
typedef  TYPE_1__ RPC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(RPC *rpc, bool no_disconnect)
{
	// Validate arguments
	if (rpc == NULL)
	{
		return;
	}

	if (no_disconnect == false)
	{
		FUNC1(rpc->Sock);
	}

	FUNC3(rpc->Sock);

	FUNC0(rpc->Lock);

	FUNC2(rpc);
}
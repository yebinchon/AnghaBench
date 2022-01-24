#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int ServerMode; int /*<<< orphan*/  Name; int /*<<< orphan*/ * Dispatch; int /*<<< orphan*/  Lock; void* Param; TYPE_1__* Sock; } ;
struct TYPE_6__ {int /*<<< orphan*/  socket; int /*<<< orphan*/  ref; } ;
typedef  TYPE_1__ SOCK ;
typedef  int /*<<< orphan*/  RPC_DISPATCHER ;
typedef  TYPE_2__ RPC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_2__* FUNC3 (int,int) ; 

RPC *FUNC4(SOCK *s, RPC_DISPATCHER *dispatch, void *param)
{
	RPC *r;
	// Validate arguments
	if (s == NULL)
	{
		return NULL;
	}

	r = FUNC3(sizeof(RPC), true);
	r->Sock = s;
	r->Param = param;
	r->Lock = FUNC2();
	FUNC0(s->ref);

	r->ServerMode = true;
	r->Dispatch = dispatch;

	// Name generation
	FUNC1(r->Name, sizeof(r->Name), "RPC-%u", s->socket);

	return r;
}
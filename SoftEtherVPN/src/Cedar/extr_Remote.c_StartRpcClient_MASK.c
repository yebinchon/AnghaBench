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
struct TYPE_7__ {int ServerMode; int /*<<< orphan*/  Lock; void* Param; TYPE_1__* Sock; } ;
struct TYPE_6__ {int /*<<< orphan*/  ref; } ;
typedef  TYPE_1__ SOCK ;
typedef  TYPE_2__ RPC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_2__* FUNC2 (int) ; 

RPC *FUNC3(SOCK *s, void *param)
{
	RPC *r;
	// Validate arguments
	if (s == NULL)
	{
		return NULL;
	}

	r = FUNC2(sizeof(RPC));
	r->Sock = s;
	r->Param = param;
	r->Lock = FUNC1();
	FUNC0(s->ref);

	r->ServerMode = false;

	return r;
}
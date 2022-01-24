#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ Type; int ListenMode; int /*<<< orphan*/  InProcAcceptEvent; int /*<<< orphan*/  UnderlayProtocol; int /*<<< orphan*/  InProcAcceptQueue; scalar_t__ CancelAccept; scalar_t__ Disconnecting; } ;
typedef  TYPE_1__ SOCK ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ SOCK_INPROC ; 
 int /*<<< orphan*/  SOCK_UNDERLAY_INPROC ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

SOCK *FUNC5(SOCK *s)
{
	// Validate arguments
	if (s == NULL || s->Type != SOCK_INPROC || s->ListenMode == false)
	{
		return NULL;
	}

	while (true)
	{
		SOCK *ret;
		if (s->Disconnecting || s->CancelAccept)
		{
			return NULL;
		}

		FUNC1(s->InProcAcceptQueue);
		{
			ret = FUNC0(s->InProcAcceptQueue);
		}
		FUNC3(s->InProcAcceptQueue);

		if (ret != NULL)
		{
			FUNC2(ret->UnderlayProtocol, sizeof(ret->UnderlayProtocol), SOCK_UNDERLAY_INPROC);

			return ret;
		}

		FUNC4(s->InProcAcceptEvent, INFINITE);
	}
}
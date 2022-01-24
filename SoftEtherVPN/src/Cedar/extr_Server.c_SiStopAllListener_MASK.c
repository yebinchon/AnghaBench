#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_10__ {int /*<<< orphan*/ * DynListenerDns; int /*<<< orphan*/ * DynListenerIcmp; int /*<<< orphan*/ * ServerListenerList; } ;
struct TYPE_9__ {int /*<<< orphan*/  Port; } ;
typedef  TYPE_1__ SERVER_LISTENER ;
typedef  TYPE_2__ SERVER ;
typedef  int /*<<< orphan*/  LIST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 

void FUNC9(SERVER *s)
{
	// Validate arguments
	if (s == NULL)
	{
		return;
	}

	FUNC7(s);
	{
		UINT i;
		LIST *o = FUNC4(NULL);
		for (i = 0;i < FUNC3(s->ServerListenerList);i++)
		{
			SERVER_LISTENER *e = FUNC2(s->ServerListenerList, i);
			FUNC0(o, e);
		}

		for (i = 0;i < FUNC3(o);i++)
		{
			SERVER_LISTENER *e = FUNC2(o, i);
			FUNC6(s, e->Port);
		}

		FUNC5(o);
	}
	FUNC8(s);

	FUNC5(s->ServerListenerList);

	// Stop the VPN over ICMP listener
	FUNC1(s->DynListenerIcmp);
	s->DynListenerIcmp = NULL;

	// Stop the VPN over DNS listener
	FUNC1(s->DynListenerDns);
	s->DynListenerDns = NULL;
}
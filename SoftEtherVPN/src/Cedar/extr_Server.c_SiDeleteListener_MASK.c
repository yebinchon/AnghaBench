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
struct TYPE_10__ {int /*<<< orphan*/  ServerListenerList; } ;
struct TYPE_9__ {int /*<<< orphan*/ * Listener; } ;
typedef  TYPE_1__ SERVER_LISTENER ;
typedef  TYPE_2__ SERVER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,scalar_t__) ; 
 TYPE_1__* FUNC4 (TYPE_2__*,scalar_t__) ; 

bool FUNC5(SERVER *s, UINT port)
{
	SERVER_LISTENER *e;
	// Validate arguments
	if (s == NULL || port == 0)
	{
		return false;
	}

	e = FUNC4(s, port);
	if (e == NULL)
	{
		return false;
	}

	// Stop if still alive
	FUNC3(s, port);

	if (e->Listener != NULL)
	{
		FUNC2(e->Listener);
	}

	FUNC0(s->ServerListenerList, e);
	FUNC1(e);

	return true;
}
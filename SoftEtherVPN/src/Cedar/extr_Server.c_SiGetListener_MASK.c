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
typedef  scalar_t__ UINT ;
struct TYPE_7__ {int /*<<< orphan*/  ServerListenerList; } ;
struct TYPE_6__ {scalar_t__ Port; } ;
typedef  TYPE_1__ SERVER_LISTENER ;
typedef  TYPE_2__ SERVER ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

SERVER_LISTENER *FUNC2(SERVER *s, UINT port)
{
	UINT i;
	// Validate arguments
	if (s == NULL || port == 0)
	{
		return NULL;
	}

	for (i = 0;i < FUNC1(s->ServerListenerList);i++)
	{
		SERVER_LISTENER *e = FUNC0(s->ServerListenerList, i);
		if (e->Port == port)
		{
			return e;
		}
	}

	return NULL;
}
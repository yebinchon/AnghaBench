#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT ;
struct TYPE_3__ {size_t NumPort; int /*<<< orphan*/ * Errors; int /*<<< orphan*/ * Enables; int /*<<< orphan*/ * Ports; } ;
typedef  TYPE_1__ RPC_LISTENER_LIST ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 

void FUNC3(PACK *p, RPC_LISTENER_LIST *t)
{
	UINT i;
	// Validate arguments
	if (t == NULL || p == NULL)
	{
		return;
	}

	FUNC2(p, "ListenerList");
	for (i = 0;i < t->NumPort;i++)
	{
		FUNC1(p, "Ports", t->Ports[i], i, t->NumPort);
		FUNC0(p, "Enables", t->Enables[i], i, t->NumPort);
		FUNC0(p, "Errors", t->Errors[i], i, t->NumPort);
	}
	FUNC2(p, NULL);
}
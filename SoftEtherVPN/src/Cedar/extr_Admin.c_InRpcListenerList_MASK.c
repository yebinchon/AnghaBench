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
typedef  size_t UINT ;
struct TYPE_4__ {int NumPort; void** Errors; void** Enables; int /*<<< orphan*/ * Ports; } ;
typedef  TYPE_1__ RPC_LISTENER_LIST ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,char*,size_t) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 void* FUNC4 (int) ; 

void FUNC5(RPC_LISTENER_LIST *t, PACK *p)
{
	UINT i;
	// Validate arguments
	if (t == NULL || p == NULL)
	{
		return;
	}

	FUNC3(t, sizeof(RPC_LISTENER_LIST));
	t->NumPort = FUNC1(p, "Ports");
	t->Ports = FUNC4(sizeof(UINT) * t->NumPort);
	t->Enables = FUNC4(sizeof(UINT) * t->NumPort);
	t->Errors = FUNC4(sizeof(UINT) * t->NumPort);
	for (i = 0;i < t->NumPort;i++)
	{
		t->Ports[i] = FUNC2(p, "Ports", i);
		t->Enables[i] = FUNC0(p, "Enables", i);
		t->Errors[i] = FUNC0(p, "Errors", i);
	}
}
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
struct TYPE_4__ {void* NumFailed; void* NumTry; void* NumConnected; void* FirstConnectedTime; void* CurrentConnectedTime; void* StartedTime; void* LastError; int /*<<< orphan*/  Online; void* Port; int /*<<< orphan*/  Ip; } ;
typedef  TYPE_1__ RPC_FARM_CONNECTION_STATUS ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC1 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 

void FUNC5(RPC_FARM_CONNECTION_STATUS *t, PACK *p)
{
	FUNC4(t, sizeof(RPC_FARM_CONNECTION_STATUS));
	// Validate arguments
	if (t == NULL || p == NULL)
	{
		return;
	}

	t->Ip = FUNC3(p, "Ip");
	t->Port = FUNC1(p, "Port");
	t->Online = FUNC0(p, "Online");
	t->LastError = FUNC1(p, "LastError");
	t->StartedTime = FUNC2(p, "StartedTime");
	t->CurrentConnectedTime = FUNC2(p, "CurrentConnectedTime");
	t->FirstConnectedTime = FUNC2(p, "FirstConnectedTime");
	t->NumConnected = FUNC1(p, "NumConnected");
	t->NumTry = FUNC1(p, "NumTry");
	t->NumFailed = FUNC1(p, "NumFailed");
}
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
struct TYPE_3__ {int /*<<< orphan*/  NumFailed; int /*<<< orphan*/  NumTry; int /*<<< orphan*/  NumConnected; int /*<<< orphan*/  FirstConnectedTime; int /*<<< orphan*/  CurrentConnectedTime; int /*<<< orphan*/  StartedTime; int /*<<< orphan*/  LastError; int /*<<< orphan*/  Online; int /*<<< orphan*/  Port; int /*<<< orphan*/  Ip; } ;
typedef  TYPE_1__ RPC_FARM_CONNECTION_STATUS ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

void FUNC4(PACK *p, RPC_FARM_CONNECTION_STATUS *t)
{
	// Validate arguments
	if (t == NULL || p == NULL)
	{
		return;
	}

	FUNC2(p, "Ip", t->Ip);
	FUNC1(p, "Port", t->Port);
	FUNC0(p, "Online", t->Online);
	FUNC1(p, "LastError", t->LastError);
	FUNC3(p, "StartedTime", t->StartedTime);
	FUNC3(p, "CurrentConnectedTime", t->CurrentConnectedTime);
	FUNC3(p, "FirstConnectedTime", t->FirstConnectedTime);
	FUNC1(p, "NumConnected", t->NumConnected);
	FUNC1(p, "NumTry", t->NumTry);
	FUNC1(p, "NumFailed", t->NumFailed);
}
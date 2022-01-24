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
struct TYPE_4__ {int NumPort; int /*<<< orphan*/  ControllerOnly; void* Weight; int /*<<< orphan*/  MemberPasswordPlaintext; int /*<<< orphan*/  MemberPassword; void* ControllerPort; int /*<<< orphan*/  ControllerName; int /*<<< orphan*/  PublicIp; int /*<<< orphan*/ * Ports; void* ServerType; } ;
typedef  TYPE_1__ RPC_FARM ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int) ; 
 int /*<<< orphan*/ * FUNC8 (int) ; 

void FUNC9(RPC_FARM *t, PACK *p)
{
	UINT i;
	// Validate arguments
	if (t == NULL || p == NULL)
	{
		return;
	}

	FUNC7(t, sizeof(RPC_FARM));
	t->ServerType = FUNC3(p, "ServerType");
	t->NumPort = FUNC2(p, "Ports");
	t->Ports = FUNC8(sizeof(UINT) * t->NumPort);
	for (i = 0;i < t->NumPort;i++)
	{
		t->Ports[i] = FUNC4(p, "Ports", i);
	}
	t->PublicIp = FUNC5(p, "PublicIp");
	FUNC6(p, "ControllerName", t->ControllerName, sizeof(t->ControllerName));
	t->ControllerPort = FUNC3(p, "ControllerPort");
	FUNC1(p, "MemberPassword", t->MemberPassword, sizeof(t->MemberPassword));
	FUNC6(p, "MemberPasswordPlaintext", t->MemberPasswordPlaintext, sizeof(t->MemberPasswordPlaintext));
	t->Weight = FUNC3(p, "Weight");
	t->ControllerOnly = FUNC0(p, "ControllerOnly");
}
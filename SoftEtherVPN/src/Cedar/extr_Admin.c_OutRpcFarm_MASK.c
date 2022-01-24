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
struct TYPE_3__ {size_t NumPort; int /*<<< orphan*/  ControllerOnly; int /*<<< orphan*/  Weight; int /*<<< orphan*/  MemberPasswordPlaintext; int /*<<< orphan*/  MemberPassword; int /*<<< orphan*/  ControllerPort; int /*<<< orphan*/  ControllerName; int /*<<< orphan*/  PublicIp; int /*<<< orphan*/ * Ports; int /*<<< orphan*/  ServerType; } ;
typedef  TYPE_1__ RPC_FARM ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

void FUNC6(PACK *p, RPC_FARM *t)
{
	UINT i;
	// Validate arguments
	if (t == NULL || p == NULL)
	{
		return;
	}

	FUNC2(p, "ServerType", t->ServerType);
	for (i = 0;i < t->NumPort;i++)
	{
		FUNC3(p, "Ports", t->Ports[i], i, t->NumPort);
	}
	FUNC4(p, "PublicIp", t->PublicIp);
	FUNC5(p, "ControllerName", t->ControllerName);
	FUNC2(p, "ControllerPort", t->ControllerPort);
	FUNC1(p, "MemberPassword", t->MemberPassword, sizeof(t->MemberPassword));
	FUNC5(p, "MemberPasswordPlaintext", t->MemberPasswordPlaintext);
	FUNC2(p, "Weight", t->Weight);
	FUNC0(p, "ControllerOnly", t->ControllerOnly);
}
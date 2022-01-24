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
struct TYPE_4__ {int /*<<< orphan*/  NodeInfo; int /*<<< orphan*/  Status; int /*<<< orphan*/  ClientIpAddress; int /*<<< orphan*/  ClientHostName; int /*<<< orphan*/  ClientIp6; int /*<<< orphan*/  ClientIp; int /*<<< orphan*/  RealUsername; int /*<<< orphan*/  GroupName; int /*<<< orphan*/  Username; int /*<<< orphan*/  Name; int /*<<< orphan*/  HubName; } ;
typedef  TYPE_1__ RPC_SESSION_STATUS ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 

void FUNC7(RPC_SESSION_STATUS *t, PACK *p)
{
	// Validate arguments
	if (t == NULL || p == NULL)
	{
		return;
	}

	FUNC6(t, sizeof(RPC_SESSION_STATUS));
	FUNC5(p, "HubName", t->HubName, sizeof(t->HubName));
	FUNC5(p, "Name", t->Name, sizeof(t->Name));
	FUNC5(p, "Username", t->Username, sizeof(t->Username));
	FUNC5(p, "GroupName", t->GroupName, sizeof(t->GroupName));
	FUNC5(p, "RealUsername", t->RealUsername, sizeof(t->RealUsername));
	t->ClientIp = FUNC4(p, "SessionStatus_ClientIp");
	FUNC2(p, "SessionStatus_ClientIp6", t->ClientIp6, sizeof(t->ClientIp6));
	FUNC5(p, "SessionStatus_ClientHostName", t->ClientHostName, sizeof(t->ClientHostName));
	FUNC3(p, "Client_Ip_Address", &t->ClientIpAddress);

	FUNC0(&t->Status, p);
	FUNC1(&t->NodeInfo, p);
}
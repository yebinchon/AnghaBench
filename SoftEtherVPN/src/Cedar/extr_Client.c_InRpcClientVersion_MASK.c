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
struct TYPE_4__ {int /*<<< orphan*/  ClientId; void* ShowVgcLink; void* IsVgcSupported; void* IsVLanNameRegulated; void* OsType; void* ProcessId; void* ClientBuildInt; void* ClientVerInt; int /*<<< orphan*/  ClientBuildInfoString; int /*<<< orphan*/  ClientVersionString; int /*<<< orphan*/  ClientProductName; } ;
typedef  TYPE_1__ RPC_CLIENT_VERSION ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 

void FUNC4(RPC_CLIENT_VERSION *ver, PACK *p)
{
	// Validate arguments
	if (ver == NULL || p == NULL)
	{
		return;
	}

	FUNC3(ver, sizeof(RPC_CLIENT_VERSION));
	FUNC2(p, "ClientProductName", ver->ClientProductName, sizeof(ver->ClientProductName));
	FUNC2(p, "ClientVersionString", ver->ClientVersionString, sizeof(ver->ClientVersionString));
	FUNC2(p, "ClientBuildInfoString", ver->ClientBuildInfoString, sizeof(ver->ClientBuildInfoString));
	ver->ClientVerInt = FUNC1(p, "ClientVerInt");
	ver->ClientBuildInt = FUNC1(p, "ClientBuildInt");
	ver->ProcessId = FUNC1(p, "ProcessId");
	ver->OsType = FUNC1(p, "OsType");
	ver->IsVLanNameRegulated = FUNC0(p, "IsVLanNameRegulated");
	ver->IsVgcSupported = FUNC0(p, "IsVgcSupported");
	ver->ShowVgcLink = FUNC0(p, "ShowVgcLink");
	FUNC2(p, "ClientId", ver->ClientId, sizeof(ver->ClientId));
}
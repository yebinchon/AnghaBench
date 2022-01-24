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
struct TYPE_3__ {int /*<<< orphan*/  ClientId; int /*<<< orphan*/  ShowVgcLink; int /*<<< orphan*/  IsVgcSupported; int /*<<< orphan*/  IsVLanNameRegulated; int /*<<< orphan*/  OsType; int /*<<< orphan*/  ProcessId; int /*<<< orphan*/  ClientBuildInt; int /*<<< orphan*/  ClientVerInt; int /*<<< orphan*/  ClientBuildInfoString; int /*<<< orphan*/  ClientVersionString; int /*<<< orphan*/  ClientProductName; } ;
typedef  TYPE_1__ RPC_CLIENT_VERSION ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

void FUNC3(PACK *p, RPC_CLIENT_VERSION *ver)
{
	// Validate arguments
	if (ver == NULL || p == NULL)
	{
		return;
	}

	FUNC2(p, "ClientProductName", ver->ClientProductName);
	FUNC2(p, "ClientVersionString", ver->ClientVersionString);
	FUNC2(p, "ClientBuildInfoString", ver->ClientBuildInfoString);
	FUNC1(p, "ClientVerInt", ver->ClientVerInt);
	FUNC1(p, "ClientBuildInt", ver->ClientBuildInt);
	FUNC1(p, "ProcessId", ver->ProcessId);
	FUNC1(p, "OsType", ver->OsType);
	FUNC0(p, "IsVLanNameRegulated", ver->IsVLanNameRegulated);
	FUNC0(p, "IsVgcSupported", ver->IsVgcSupported);
	FUNC0(p, "ShowVgcLink", ver->ShowVgcLink);
	FUNC2(p, "ClientId", ver->ClientId);
}
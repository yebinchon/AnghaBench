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
struct TYPE_3__ {int /*<<< orphan*/  IsRawIpMode; int /*<<< orphan*/  IsKernelMode; int /*<<< orphan*/  NumDhcpClients; int /*<<< orphan*/  NumDnsSessions; int /*<<< orphan*/  NumIcmpSessions; int /*<<< orphan*/  NumUdpSessions; int /*<<< orphan*/  NumTcpSessions; int /*<<< orphan*/  HubName; } ;
typedef  TYPE_1__ RPC_NAT_STATUS ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

void FUNC3(PACK *p, RPC_NAT_STATUS *t)
{
	// Validate arguments
	if (p == NULL || t == NULL)
	{
		return;
	}

	FUNC2(p, "HubName", t->HubName);
	FUNC1(p, "NumTcpSessions", t->NumTcpSessions);
	FUNC1(p, "NumUdpSessions", t->NumUdpSessions);
	FUNC1(p, "NumIcmpSessions", t->NumIcmpSessions);
	FUNC1(p, "NumDnsSessions", t->NumDnsSessions);
	FUNC1(p, "NumDhcpClients", t->NumDhcpClients);
	FUNC0(p, "IsKernelMode", t->IsKernelMode);
	FUNC0(p, "IsRawIpMode", t->IsRawIpMode);
}
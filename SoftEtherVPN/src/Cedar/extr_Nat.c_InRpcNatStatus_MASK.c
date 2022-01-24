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
struct TYPE_4__ {int /*<<< orphan*/  HubName; void* IsRawIpMode; void* IsKernelMode; void* NumDhcpClients; void* NumDnsSessions; void* NumIcmpSessions; void* NumUdpSessions; void* NumTcpSessions; } ;
typedef  TYPE_1__ RPC_NAT_STATUS ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 

void FUNC4(RPC_NAT_STATUS *t, PACK *p)
{
	// Validate arguments
	if (t == NULL || p == NULL)
	{
		return;
	}

	FUNC3(t, sizeof(RPC_NAT_STATUS));
	t->NumTcpSessions = FUNC1(p, "NumTcpSessions");
	t->NumUdpSessions = FUNC1(p, "NumUdpSessions");
	t->NumIcmpSessions = FUNC1(p, "NumIcmpSessions");
	t->NumDnsSessions = FUNC1(p, "NumDnsSessions");
	t->NumDhcpClients = FUNC1(p, "NumDhcpClients");
	t->IsKernelMode = FUNC0(p, "IsKernelMode");
	t->IsRawIpMode = FUNC0(p, "IsRawIpMode");
	FUNC2(p, "HubName", t->HubName, sizeof(t->HubName));
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  cao ;
typedef  int UINT ;
struct TYPE_9__ {scalar_t__ IsL3Mode; } ;
struct TYPE_8__ {int LeaseTime; int /*<<< orphan*/  ClasslessRoute; int /*<<< orphan*/  Gateway; int /*<<< orphan*/  SubnetMask; int /*<<< orphan*/  ClientAddress; } ;
struct TYPE_7__ {int L3DhcpRenewInterval; int DhcpAllocFailed; int Done; int /*<<< orphan*/ * SockEvent; int /*<<< orphan*/ * Ipc; scalar_t__ L3NextDhcpRenewTick; int /*<<< orphan*/  L3ClientAddressOption; int /*<<< orphan*/  TubeForDisconnect; TYPE_4__ Param; int /*<<< orphan*/  ErrorCode; int /*<<< orphan*/  Cedar; } ;
typedef  int /*<<< orphan*/  THREAD ;
typedef  TYPE_1__ IPC_ASYNC ;
typedef  int /*<<< orphan*/  IP ;
typedef  TYPE_2__ DHCP_OPTION_LIST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int) ; 

void FUNC10(THREAD *thread, void *param)
{
	IPC_ASYNC *a;
	// Validate arguments
	if (thread == NULL || param == NULL)
	{
		return;
	}

	a = (IPC_ASYNC *)param;

	// Attempt to connect
	a->Ipc = FUNC5(a->Cedar, &a->Param, &a->ErrorCode);

	if (a->Ipc != NULL)
	{
		if (a->Param.IsL3Mode)
		{
			DHCP_OPTION_LIST cao;

			FUNC9(&cao, sizeof(cao));

			// Get an IP address from the DHCP server in the case of L3 mode
			FUNC1("IPCDhcpAllocateIP() start...\n");
			if (FUNC3(a->Ipc, &cao, a->TubeForDisconnect))
			{
				UINT t;
				IP ip, subnet, gw;

				FUNC1("IPCDhcpAllocateIP() Ok.\n");

				// Calculate the DHCP update interval
				t = cao.LeaseTime;
				if (t == 0)
				{
					t = 600;
				}

				t = t / 3;

				if (t == 0)
				{
					t = 1;
				}

				// Save the options list
				FUNC0(&a->L3ClientAddressOption, &cao, sizeof(DHCP_OPTION_LIST));
				a->L3DhcpRenewInterval = t * 1000;

				// Set the obtained IP address parameters to the IPC virtual host
				FUNC8(&ip, cao.ClientAddress);
				FUNC8(&subnet, cao.SubnetMask);
				FUNC8(&gw, cao.Gateway);

				FUNC4(a->Ipc, &ip, &subnet, &gw, &cao.ClasslessRoute);

				a->L3NextDhcpRenewTick = FUNC7() + a->L3DhcpRenewInterval;
			}
			else
			{
				FUNC1("IPCDhcpAllocateIP() Error.\n");

				a->DhcpAllocFailed = true;

				FUNC2(a->Ipc);
				a->Ipc = NULL;
			}
		}
	}

	// Procedure complete
	a->Done = true;

	if (a->SockEvent != NULL)
	{
		FUNC6(a->SockEvent);
	}
}
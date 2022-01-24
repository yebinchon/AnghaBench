#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_7__ ;
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_13__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  macstr ;
struct TYPE_22__ {int /*<<< orphan*/  Ref; } ;
struct TYPE_21__ {int Halt; int IsRawIpMode; int Active; scalar_t__ NextWaitTimeForRetry; int /*<<< orphan*/  HaltEvent; int /*<<< orphan*/  CurrentMacAddress; int /*<<< orphan*/  Lock; TYPE_7__* HaltTube; scalar_t__ PublicIP; TYPE_13__* v; } ;
struct TYPE_19__ {int /*<<< orphan*/  ServerAddress; } ;
struct TYPE_20__ {int IsIpRawMode; int /*<<< orphan*/  DnsServerIP; TYPE_4__ CurrentDhcpOptionList; TYPE_3__* Ipc; int /*<<< orphan*/  DeviceName; TYPE_2__* Sock2; int /*<<< orphan*/ * Sock1; } ;
struct TYPE_18__ {int /*<<< orphan*/  BroadcastAddress; int /*<<< orphan*/  DefaultGateway; int /*<<< orphan*/  SubnetMask; int /*<<< orphan*/  ClientIPAddress; int /*<<< orphan*/  MacAddress; } ;
struct TYPE_17__ {TYPE_7__* RecvTube; } ;
struct TYPE_16__ {scalar_t__ DisableIpRawModeSecureNAT; scalar_t__ DisableKernelModeSecureNAT; } ;
struct TYPE_15__ {int UseNat; TYPE_1__* HubOption; } ;
typedef  int /*<<< orphan*/  THREAD ;
typedef  TYPE_5__ NATIVE_STACK ;
typedef  TYPE_6__ NATIVE_NAT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 void* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_13__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_6__*) ; 
 TYPE_5__* FUNC10 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_6__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (void*,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int) ; 

void FUNC17(THREAD *thread, void *param)
{
	NATIVE_NAT *t = (NATIVE_NAT *)param;
	void *wait_handle = FUNC5();
	// Validate arguments
	if (thread == NULL || param == NULL)
	{
		return;
	}

	while (t->Halt == false)
	{
		NATIVE_STACK *a;

		while (t->v->UseNat == false || t->v->HubOption == NULL || (t->v->HubOption->DisableKernelModeSecureNAT && t->v->HubOption->DisableIpRawModeSecureNAT))
		{
			if (t->Halt)
			{
				break;
			}

			// If the NAT is disabled, wait until it becomes enabled
			FUNC14(t->HaltEvent, 1234);	
		}

		if (t->Halt)
		{
			break;
		}

		// Get a next good native NAT stack
		FUNC1("NnGetNextInterface Start.\n");

		FUNC9(t);

		a = FUNC10(t);

		if (a != NULL)
		{
			char macstr[64];
			// Acquisition success
			FUNC1("NnGetNextInterface Ok: %s\n", a->DeviceName);

			t->IsRawIpMode = a->IsIpRawMode;

			FUNC6(t->Lock);
			{
				if (a->Sock1 != NULL)
				{
					t->HaltTube = a->Sock2->RecvTube;

					if (t->HaltTube != NULL)
					{
						FUNC0(t->HaltTube->Ref);
					}
				}
			}
			FUNC13(t->Lock);

			FUNC9(t);

			t->PublicIP = FUNC4(&a->Ipc->ClientIPAddress);
			t->Active = true;


			FUNC1("NnMainLoop Start.\n");
			FUNC7(macstr, sizeof(macstr), a->Ipc->MacAddress);
			FUNC8(t->v, "LH_KERNEL_MODE_START", a->DeviceName,
				&a->Ipc->ClientIPAddress, &a->Ipc->SubnetMask, &a->Ipc->DefaultGateway, &a->Ipc->BroadcastAddress,
				macstr, &a->CurrentDhcpOptionList.ServerAddress, &a->DnsServerIP);
			FUNC11(t, a);
			FUNC1("NnMainLoop End.\n");

			t->IsRawIpMode = false;

			t->Active = false;
			t->PublicIP = 0;


			FUNC9(t);

			// Close the stack
			FUNC6(t->Lock);
			{
				if (t->HaltTube != NULL)
				{
					FUNC12(t->HaltTube);
					t->HaltTube = NULL;
				}
			}
			FUNC13(t->Lock);
			FUNC2(a);

			FUNC16(t->CurrentMacAddress, 6);
		}
		else
		{
			FUNC1("NnGetNextInterface Failed.\n");
		}

		// Wait for a certain period of time
		if (t->NextWaitTimeForRetry != 0)
		{
			FUNC15(wait_handle, t->HaltEvent, t->NextWaitTimeForRetry, 1000);
		}
	}

	FUNC3(wait_handle);
}
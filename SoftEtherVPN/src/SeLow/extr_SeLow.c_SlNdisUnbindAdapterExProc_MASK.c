#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int UINT ;
struct TYPE_8__ {int /*<<< orphan*/  NumBoundAdapters; int /*<<< orphan*/  AdapterList; } ;
struct TYPE_7__ {int Halt; int IsClosePending; int NumPendingOidRequests; int NumPendingSendPackets; int /*<<< orphan*/ * UnbindContext; int /*<<< orphan*/  Lock; int /*<<< orphan*/ * AdapterHandle; TYPE_1__* Device; } ;
struct TYPE_6__ {int Halting; } ;
typedef  TYPE_2__ SL_ADAPTER ;
typedef  scalar_t__ NDIS_STATUS ;
typedef  int /*<<< orphan*/ * NDIS_HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ NDIS_STATUS_PENDING ; 
 scalar_t__ NDIS_STATUS_SUCCESS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_3__* sl ; 

NDIS_STATUS FUNC8(NDIS_HANDLE unbind_context, NDIS_HANDLE protocol_binding_context)
{
	NDIS_STATUS ret;
	SL_ADAPTER *a = (SL_ADAPTER *)protocol_binding_context;
	UINT j;
	NDIS_HANDLE adapter_handle = NULL;

	if (a->Halt)
	{
		//SL_WHERE;
	}

	adapter_handle = a->AdapterHandle;
	a->Halt = true;
	if (a->Device != NULL)
	{
		a->Device->Halting = true;
	}
	a->AdapterHandle = NULL;

	FUNC3(a->Lock);
	{
	}
	FUNC6(a->Lock);

	a->UnbindContext = unbind_context;
	a->IsClosePending = true;

	// Delete the adapter from the adapter list
	FUNC4(sl->AdapterList);
	{
		FUNC2(sl->AdapterList, a);
	}
	FUNC7(sl->AdapterList);

	for (j = 0;j < 32;j++)
	{
		// Wait until the number of OID requests of being processed by this adapter becomes zero
		while (true)
		{
			UINT num;

			num = a->NumPendingOidRequests;

			if (num == 0)
			{
				break;
			}
			else
			{
				j = 0;
			}

			//SlSleep(50);
		}

		// Wait until the number of packets this adapter is transmitting becomes zero
		while (true)
		{
			UINT num;

			num = a->NumPendingSendPackets;

			if (num == 0)
			{
				break;
			}
			else
			{
				j = 0;
			}

			//SlSleep(50);
		}

	}

	ret = FUNC1(adapter_handle);

	if (ret != NDIS_STATUS_PENDING)
	{
		a->IsClosePending = false;
		FUNC5(a);

		ret = NDIS_STATUS_SUCCESS;

		FUNC0(&sl->NumBoundAdapters);
	}

	return ret;
}
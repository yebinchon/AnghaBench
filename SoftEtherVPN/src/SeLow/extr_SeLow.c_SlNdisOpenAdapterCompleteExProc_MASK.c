#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
struct TYPE_18__ {int /*<<< orphan*/  NumBoundAdapters; int /*<<< orphan*/  AdapterList; } ;
struct TYPE_17__ {int IsOpenPending; int Ready; int /*<<< orphan*/ * AdapterHandle; TYPE_3__* Device; int /*<<< orphan*/  FriendlyName; int /*<<< orphan*/  AdapterId; scalar_t__ BindingContext; } ;
struct TYPE_16__ {TYPE_4__* Adapter; int /*<<< orphan*/  FileList; } ;
struct TYPE_14__ {scalar_t__ Buffer; } ;
struct TYPE_15__ {TYPE_1__ String; } ;
typedef  TYPE_2__ SL_UNICODE ;
typedef  TYPE_3__ SL_DEVICE ;
typedef  TYPE_4__ SL_ADAPTER ;
typedef  int /*<<< orphan*/  NDIS_STATUS ;
typedef  scalar_t__ NDIS_HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OID_GEN_VENDOR_DESCRIPTION ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SL_ADAPTER_DEVICE_NAME ; 
 int /*<<< orphan*/  SL_ADAPTER_DEVICE_NAME_SYMBOLIC ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC9 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 TYPE_2__* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 TYPE_5__* sl ; 

void FUNC14(NDIS_HANDLE protocol_binding_context, NDIS_STATUS status)
{
	SL_ADAPTER *a = (SL_ADAPTER *)protocol_binding_context;
	bool is_pending = a->IsOpenPending;
	NDIS_HANDLE binding_context = a->BindingContext;

	if (FUNC3(status))
	{
		// Create an adapter device
		SL_UNICODE *device_name = FUNC11(SL_ADAPTER_DEVICE_NAME);
		SL_UNICODE *symbolic_name = FUNC11(SL_ADAPTER_DEVICE_NAME_SYMBOLIC);
		SL_DEVICE *dev;

		// Create a device name
		FUNC5(device_name->String.Buffer + 8, a->AdapterId, sizeof(wchar_t) * 46);
		FUNC5(symbolic_name->String.Buffer + 19, a->AdapterId, sizeof(wchar_t) * 46);

		dev = FUNC9(device_name, symbolic_name);

		if (dev == NULL)
		{
			// Device creation failed
			FUNC7(device_name);
			FUNC7(symbolic_name);
		}
		else
		{
			// Create a file list
			dev->FileList = FUNC10();
		}
		if (dev != NULL)
		{
			// Get the display name
			FUNC12(a, false, OID_GEN_VENDOR_DESCRIPTION, a->FriendlyName,
				sizeof(a->FriendlyName) - 1);

			dev->Adapter = a;
			a->Device = dev;

			// Add this adapter to the adapter list
			FUNC8(sl->AdapterList);
			{
				FUNC4(sl->AdapterList, a);
			}
			FUNC13(sl->AdapterList);
		}
	}
	else
	{
		// Discard the adapter handle
		a->AdapterHandle = NULL;

		// Release the SL_ADAPTER
		FUNC6(a);

		a = NULL;
	}

	if (is_pending)
	{
		FUNC2(binding_context, status);
	}

	if (a != NULL)
	{
		a->Ready = true;
	}

	if (is_pending)
	{
		if (FUNC1(status))
		{
			FUNC0(&sl->NumBoundAdapters);
		}
	}
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_14__ {TYPE_6__* InformationBuffer; scalar_t__ InformationBufferLength; void* Oid; } ;
struct TYPE_13__ {scalar_t__ InformationBufferLength; void* InformationBuffer; void* Oid; } ;
struct TYPE_15__ {TYPE_3__ SET_INFORMATION; TYPE_2__ QUERY_INFORMATION; } ;
struct TYPE_12__ {int /*<<< orphan*/  Size; int /*<<< orphan*/  Revision; int /*<<< orphan*/  Type; } ;
struct TYPE_17__ {TYPE_4__ DATA; int /*<<< orphan*/  RequestType; TYPE_1__ Header; } ;
struct TYPE_16__ {int Halt; int /*<<< orphan*/  NumPendingOidRequests; int /*<<< orphan*/ * AdapterHandle; int /*<<< orphan*/  Lock; } ;
typedef  TYPE_5__ SL_ADAPTER ;
typedef  scalar_t__ NDIS_STATUS ;
typedef  TYPE_6__ NDIS_OID_REQUEST ;
typedef  void* NDIS_OID ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NDIS_OBJECT_TYPE_OID_REQUEST ; 
 int /*<<< orphan*/  NDIS_OID_REQUEST_REVISION_1 ; 
 int /*<<< orphan*/  NDIS_SIZEOF_OID_REQUEST_REVISION_1 ; 
 scalar_t__ NDIS_STATUS_PENDING ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,TYPE_6__*) ; 
 int /*<<< orphan*/  NdisRequestQueryInformation ; 
 int /*<<< orphan*/  NdisRequestSetInformation ; 
 TYPE_6__* FUNC3 (void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC7 (int) ; 

void FUNC8(SL_ADAPTER *a, bool set, NDIS_OID oid, void *data, UINT size)
{
	NDIS_OID_REQUEST *t;
	NDIS_STATUS ret;
	// Validate arguments
	if (a == NULL || data == NULL || size == 0)
	{
		return;
	}

	if (a->Halt == false)
	{
		bool ok = false;

		t = FUNC7(sizeof(NDIS_OID_REQUEST));

		t->Header.Type = NDIS_OBJECT_TYPE_OID_REQUEST;
		t->Header.Revision = NDIS_OID_REQUEST_REVISION_1;
		t->Header.Size = NDIS_SIZEOF_OID_REQUEST_REVISION_1;

		if (set == false)
		{
			t->RequestType = NdisRequestQueryInformation;
			t->DATA.QUERY_INFORMATION.Oid = oid;
			t->DATA.QUERY_INFORMATION.InformationBuffer = data;
			t->DATA.QUERY_INFORMATION.InformationBufferLength = size;
		}
		else
		{
			t->RequestType = NdisRequestSetInformation;
			t->DATA.SET_INFORMATION.Oid = oid;
			t->DATA.SET_INFORMATION.InformationBuffer = FUNC3(data, size);
			t->DATA.SET_INFORMATION.InformationBufferLength = size;
		}

		FUNC5(a->Lock);
		{
			if (a->AdapterHandle != NULL && a->Halt == false)
			{
				FUNC1(&a->NumPendingOidRequests);
				ok = true;
			}
		}
		FUNC6(a->Lock);

		if (ok)
		{
			ret = FUNC2(a->AdapterHandle, t);

			if (ret != NDIS_STATUS_PENDING)
			{
				FUNC0(&a->NumPendingOidRequests);
				if (set)
				{
					FUNC4(t->DATA.SET_INFORMATION.InformationBuffer);
				}
				FUNC4(t);
			}
		}
		else
		{
			if (set)
			{
				FUNC4(t->DATA.SET_INFORMATION.InformationBuffer);
			}
			FUNC4(t);
		}
	}
}
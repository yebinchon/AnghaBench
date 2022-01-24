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
struct TYPE_4__ {struct TYPE_4__* Next; struct TYPE_4__* NetworkAddresses; int /*<<< orphan*/  Name; } ;
typedef  int /*<<< orphan*/  PCHAR ;
typedef  TYPE_1__* PADAPTER_INFO ;
typedef  scalar_t__ BOOLEAN ;

/* Variables and functions */
 TYPE_1__* AdaptersInfoList ; 
 int /*<<< orphan*/  AdaptersInfoMutex ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FAKE_NDISWAN_ADAPTER_NAME ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * p_dagc_open ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

BOOLEAN FUNC8(PCHAR AdapterName)
{
	//this function should acquire the AdaptersInfoMutex, since it's NOT called with an ADAPTER_INFO as parameter
	PADAPTER_INFO TAdInfo, PrevAdInfo;
	
	FUNC6(AdaptersInfoMutex, INFINITE);
	
	PrevAdInfo = TAdInfo = AdaptersInfoList;

	//
	// If an entry for this adapter is present in the list, we destroy it
	//
	while(TAdInfo != NULL)
	{
		if(FUNC7(TAdInfo->Name, AdapterName) == 0)
		{
			if (FUNC7(AdapterName, FAKE_NDISWAN_ADAPTER_NAME) == 0)
			{
				FUNC5(AdaptersInfoMutex);
				return TRUE;
			}

			if(TAdInfo == AdaptersInfoList)
			{
				AdaptersInfoList = TAdInfo->Next;
			}
			else
			{
				PrevAdInfo->Next = TAdInfo->Next;
			}

			if (TAdInfo->NetworkAddresses != NULL)
				FUNC1(TAdInfo->NetworkAddresses);
			FUNC1(TAdInfo);

			break;
		}

		PrevAdInfo = TAdInfo;

		TAdInfo = TAdInfo->Next;
	}

	FUNC5(AdaptersInfoMutex);

	//
	// Now obtain the information about this adapter
	//
	if(FUNC0(AdapterName, 0) == TRUE)
		return TRUE;
#ifndef _WINNT4
	// 
	// Not a tradiditonal adapter, but possibly a Wan or DAG interface 
	// Gather all the available adapters from IPH API and dagc API
	//
	FUNC4();
	FUNC2();
#ifdef HAVE_DAG_API
	if(p_dagc_open == NULL)	
		return TRUE;	// dagc.dll not present on this system.
	else
	PacketGetAdaptersDag();
#endif // HAVE_DAG_API

#endif // _WINNT4

	// Adapter not found
	return TRUE;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct TYPE_5__* Next; struct TYPE_5__* NetworkAddresses; } ;
typedef  TYPE_1__* PVOID ;
typedef  TYPE_1__* PADAPTER_INFO ;

/* Variables and functions */
 TYPE_1__* AdaptersInfoList ; 
 int /*<<< orphan*/  AdaptersInfoMutex ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * p_dagc_open ; 

void FUNC8()
{
	//this function should acquire the AdaptersInfoMutex, since it's NOT called with an ADAPTER_INFO as parameter
	PADAPTER_INFO TAdInfo;
	PVOID Mem1, Mem2;

	FUNC7(AdaptersInfoMutex, INFINITE);

	if(AdaptersInfoList)
	{
		// Free the old list
		TAdInfo = AdaptersInfoList;
		while(TAdInfo != NULL)
		{
			Mem1 = TAdInfo->NetworkAddresses;
			Mem2 = TAdInfo;
			
			TAdInfo = TAdInfo->Next;
			
			if (Mem1 != NULL)
				FUNC0(Mem1);
			FUNC0(Mem2);
		}
		
		AdaptersInfoList = NULL;
	}

	//
	// Fill the new list
	//
	if(!FUNC3())
	{
		// No info about adapters in the registry. 
		FUNC1("PacketPopulateAdaptersInfoList: registry scan for adapters failed!\n");
	}
#ifndef _WINNT4
	if(!FUNC5())
	{
		// IP Helper API not present. We are under WinNT 4 or TCP/IP is not installed
		FUNC1("PacketPopulateAdaptersInfoList: failed to get adapters from the IP Helper API!\n");
	}

	if (!FUNC2())
	{
		FUNC1("PacketPopulateAdaptersInfoList: adding fake NdisWan adapter failed.\n");
	}

#ifdef HAVE_DAG_API
	if(p_dagc_open == NULL)	
	{}	// dagc.dll not present on this system.
	else
	{
		if(!PacketGetAdaptersDag())
		{
			// No info about adapters in the registry. 
			ODS("PacketPopulateAdaptersInfoList: lookup of dag cards failed!\n");
		}
	}
#endif // HAVE_DAG_API

#endif // _WINNT4

	FUNC6(AdaptersInfoMutex);
}
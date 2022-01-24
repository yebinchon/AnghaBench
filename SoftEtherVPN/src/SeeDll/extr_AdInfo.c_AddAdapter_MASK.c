#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  npf_if_addr ;
typedef  scalar_t__ UINT ;
struct TYPE_10__ {int Length; int MacAddressLen; int NNetworkAddresses; struct TYPE_10__* Next; scalar_t__ Flags; struct TYPE_10__* NetworkAddresses; scalar_t__ Name; int /*<<< orphan*/  MacAddress; scalar_t__ Data; int /*<<< orphan*/  Oid; int /*<<< orphan*/  LinkLayer; scalar_t__ Description; } ;
typedef  TYPE_1__* PWCHAR ;
typedef  TYPE_1__* PPACKET_OID_DATA ;
typedef  scalar_t__ PCHAR ;
typedef  TYPE_1__* PADAPTER_INFO ;
typedef  int /*<<< orphan*/  LPTSTR ;
typedef  int /*<<< orphan*/ * LPADAPTER ;
typedef  int /*<<< orphan*/  LONG ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BOOLEAN ;
typedef  int /*<<< orphan*/  ADAPTER_INFO ;

/* Variables and functions */
 TYPE_1__* AdaptersInfoList ; 
 int /*<<< orphan*/  AdaptersInfoMutex ; 
 int /*<<< orphan*/  FALSE ; 
 int GMEM_MOVEABLE ; 
 int GMEM_ZEROINIT ; 
 void* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  INFINITE ; 
 scalar_t__ INFO_FLAG_DONT_EXPORT ; 
 scalar_t__ INFO_FLAG_NDIS_ADAPTER ; 
 int MAX_NETWORK_ADDRESSES ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__) ; 
 int /*<<< orphan*/  OID_802_3_CURRENT_ADDRESS ; 
 int /*<<< orphan*/  OID_GEN_VENDOR_DESCRIPTION ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC16 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__,scalar_t__) ; 

BOOLEAN FUNC18(PCHAR AdName, UINT flags)
{
	//this function should acquire the AdaptersInfoMutex, since it's NOT called with an ADAPTER_INFO as parameter
	DWORD		RegKeySize=0;
	LONG		Status;
	LPADAPTER	adapter;
	PPACKET_OID_DATA  OidData;
	int			i=0;
	PADAPTER_INFO	TmpAdInfo;
	PADAPTER_INFO TAdInfo;	
	PWCHAR		UAdName;
	
	FUNC2("AddAdapter\n");
	
	FUNC12(AdaptersInfoMutex, INFINITE);
	
	for(TAdInfo = AdaptersInfoList; TAdInfo != NULL; TAdInfo = TAdInfo->Next)
	{
		if(FUNC16(AdName, TAdInfo->Name) == 0)
		{
			FUNC2("AddAdapter: Adapter already present in the list\n");
			FUNC10(AdaptersInfoMutex);
			return TRUE;
		}
	}
	
	UAdName = FUNC11(AdName);
	
	//here we could have released the mutex, but what happens if two threads try to add the same adapter? 
	//The adapter would be duplicated on the linked list
	
	if(flags != INFO_FLAG_DONT_EXPORT)
	{
		
		// Try to Open the adapter
		adapter = FUNC8((PCHAR)UAdName);
		
		FUNC1(UAdName);
		
		if(adapter == NULL)
		{
			// We are not able to open this adapter. Skip to the next one.
			FUNC10(AdaptersInfoMutex);
			return FALSE;
		}
		
		// Allocate a buffer to get the vendor description from the driver
		OidData = FUNC0(GMEM_MOVEABLE | GMEM_ZEROINIT,512);
		if (OidData == NULL) 
		{
			FUNC2("AddAdapter: GlobalAlloc Failed\n");
			FUNC5(adapter);
			FUNC10(AdaptersInfoMutex);
			return FALSE;
		}
	}
	
	//
	// PacketOpenAdapter was succesful. Consider this a valid adapter and allocate an entry for it
	// In the adapter list
	//
	
	TmpAdInfo = FUNC0(GMEM_MOVEABLE | GMEM_ZEROINIT, sizeof(ADAPTER_INFO));
	if (TmpAdInfo == NULL) 
	{
		FUNC2("AddAdapter: GlobalAlloc Failed\n");
		FUNC1(OidData);
		FUNC5(adapter);
		FUNC10(AdaptersInfoMutex);
		return FALSE;
	}
	
	// Copy the device name
	FUNC17(TmpAdInfo->Name, AdName);
	
	if(flags != INFO_FLAG_DONT_EXPORT)
	{
		// Retrieve the adapter description querying the NIC driver
		OidData->Oid = OID_GEN_VENDOR_DESCRIPTION;
		OidData->Length = 256;
		FUNC13(OidData->Data, 256);
		
		Status = FUNC9(adapter, FALSE, OidData);
		
		if(Status==0 || ((char*)OidData->Data)[0]==0)
		{
			FUNC2("AddAdapter: unable to get a valid adapter description from the NIC driver\n");
		}
		
		FUNC3("Adapter Description=%s\n\n",OidData->Data);
		
		// Copy the description
		FUNC17(TmpAdInfo->Description, OidData->Data);
		
		FUNC7(adapter, &(TmpAdInfo->LinkLayer));
		
		// Retrieve the adapter MAC address querying the NIC driver
		OidData->Oid = OID_802_3_CURRENT_ADDRESS;	// XXX At the moment only Ethernet is supported.
													// Waiting a patch to support other Link Layers
		OidData->Length = 256;
		FUNC13(OidData->Data, 256);
		
		Status = FUNC9(adapter, FALSE, OidData);
		if(Status)
		{
			FUNC14(TmpAdInfo->MacAddress, OidData->Data, 6);
			TmpAdInfo->MacAddressLen = 6;
		}
		else
		{
			FUNC15(TmpAdInfo->MacAddress, 0, 6);
			TmpAdInfo->MacAddressLen = 0;
		}
		
		// Retrieve IP addresses
		TmpAdInfo->NetworkAddresses = FUNC0(GMEM_MOVEABLE | GMEM_ZEROINIT, MAX_NETWORK_ADDRESSES * sizeof(npf_if_addr));
		if (TmpAdInfo->NetworkAddresses == NULL) {
			FUNC2("AddAdapter: GlobalAlloc Failed\n");
			FUNC5(adapter);
			FUNC1(OidData);
			FUNC1(TmpAdInfo);
			FUNC10(AdaptersInfoMutex);
			return FALSE;
		}
		
		TmpAdInfo->NNetworkAddresses = MAX_NETWORK_ADDRESSES;
		if(!FUNC6((LPTSTR)TmpAdInfo->Name, TmpAdInfo->NetworkAddresses, &TmpAdInfo->NNetworkAddresses))
		{
#ifndef _WINNT4
			// Try to see if the interface has some IPv6 addresses
			TmpAdInfo->NNetworkAddresses = 0; // We have no addresses because PacketGetAddressesFromRegistry() failed
			
			if(!FUNC4(TmpAdInfo))
			{
#endif // _WINNT4
				FUNC1(TmpAdInfo->NetworkAddresses);
				TmpAdInfo->NetworkAddresses = NULL;
				TmpAdInfo->NNetworkAddresses = 0;
#ifndef _WINNT4
			}
#endif // _WINNT4
		}
		
#ifndef _WINNT4
		// Now Add IPv6 Addresses
		FUNC4(TmpAdInfo);
#endif // _WINNT4
		
		TmpAdInfo->Flags = INFO_FLAG_NDIS_ADAPTER;	// NdisWan adapters are not exported by the NPF driver,
													// therefore it's impossible to see them here
		
		// Free storage
		FUNC5(adapter);
		FUNC1(OidData);
	}
	else
	{
		// Write in the flags that this adapter is firewire
		// This will block it in all successive calls
		TmpAdInfo->Flags = INFO_FLAG_DONT_EXPORT;
	}
	
	// Update the AdaptersInfo list
	TmpAdInfo->Next = AdaptersInfoList;
	AdaptersInfoList = TmpAdInfo;
	
	FUNC10(AdaptersInfoMutex);
	return TRUE;
}
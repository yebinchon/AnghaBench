
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef int npf_if_addr ;
typedef scalar_t__ UINT ;
struct TYPE_10__ {int Length; int MacAddressLen; int NNetworkAddresses; struct TYPE_10__* Next; scalar_t__ Flags; struct TYPE_10__* NetworkAddresses; scalar_t__ Name; int MacAddress; scalar_t__ Data; int Oid; int LinkLayer; scalar_t__ Description; } ;
typedef TYPE_1__* PWCHAR ;
typedef TYPE_1__* PPACKET_OID_DATA ;
typedef scalar_t__ PCHAR ;
typedef TYPE_1__* PADAPTER_INFO ;
typedef int LPTSTR ;
typedef int * LPADAPTER ;
typedef int LONG ;
typedef int DWORD ;
typedef int BOOLEAN ;
typedef int ADAPTER_INFO ;


 TYPE_1__* AdaptersInfoList ;
 int AdaptersInfoMutex ;
 int FALSE ;
 int GMEM_MOVEABLE ;
 int GMEM_ZEROINIT ;
 void* GlobalAllocPtr (int,int) ;
 int GlobalFreePtr (TYPE_1__*) ;
 int INFINITE ;
 scalar_t__ INFO_FLAG_DONT_EXPORT ;
 scalar_t__ INFO_FLAG_NDIS_ADAPTER ;
 int MAX_NETWORK_ADDRESSES ;
 int ODS (char*) ;
 int ODSEx (char*,scalar_t__) ;
 int OID_802_3_CURRENT_ADDRESS ;
 int OID_GEN_VENDOR_DESCRIPTION ;
 int PacketAddIP6Addresses (TYPE_1__*) ;
 int PacketCloseAdapter (int *) ;
 int PacketGetAddressesFromRegistry (int ,TYPE_1__*,int*) ;
 int PacketGetLinkLayerFromRegistry (int *,int *) ;
 int * PacketOpenAdapterNPF (scalar_t__) ;
 int PacketRequest (int *,int ,TYPE_1__*) ;
 int ReleaseMutex (int ) ;
 TYPE_1__* SChar2WChar (scalar_t__) ;
 int TRUE ;
 int WaitForSingleObject (int ,int ) ;
 int ZeroMemory (scalar_t__,int) ;
 int memcpy (int ,scalar_t__,int) ;
 int memset (int ,int ,int) ;
 scalar_t__ strcmp (scalar_t__,scalar_t__) ;
 int strcpy (scalar_t__,scalar_t__) ;

BOOLEAN AddAdapter(PCHAR AdName, UINT flags)
{

 DWORD RegKeySize=0;
 LONG Status;
 LPADAPTER adapter;
 PPACKET_OID_DATA OidData;
 int i=0;
 PADAPTER_INFO TmpAdInfo;
 PADAPTER_INFO TAdInfo;
 PWCHAR UAdName;

 ODS("AddAdapter\n");

 WaitForSingleObject(AdaptersInfoMutex, INFINITE);

 for(TAdInfo = AdaptersInfoList; TAdInfo != ((void*)0); TAdInfo = TAdInfo->Next)
 {
  if(strcmp(AdName, TAdInfo->Name) == 0)
  {
   ODS("AddAdapter: Adapter already present in the list\n");
   ReleaseMutex(AdaptersInfoMutex);
   return TRUE;
  }
 }

 UAdName = SChar2WChar(AdName);




 if(flags != INFO_FLAG_DONT_EXPORT)
 {


  adapter = PacketOpenAdapterNPF((PCHAR)UAdName);

  GlobalFreePtr(UAdName);

  if(adapter == ((void*)0))
  {

   ReleaseMutex(AdaptersInfoMutex);
   return FALSE;
  }


  OidData = GlobalAllocPtr(GMEM_MOVEABLE | GMEM_ZEROINIT,512);
  if (OidData == ((void*)0))
  {
   ODS("AddAdapter: GlobalAlloc Failed\n");
   PacketCloseAdapter(adapter);
   ReleaseMutex(AdaptersInfoMutex);
   return FALSE;
  }
 }






 TmpAdInfo = GlobalAllocPtr(GMEM_MOVEABLE | GMEM_ZEROINIT, sizeof(ADAPTER_INFO));
 if (TmpAdInfo == ((void*)0))
 {
  ODS("AddAdapter: GlobalAlloc Failed\n");
  GlobalFreePtr(OidData);
  PacketCloseAdapter(adapter);
  ReleaseMutex(AdaptersInfoMutex);
  return FALSE;
 }


 strcpy(TmpAdInfo->Name, AdName);

 if(flags != INFO_FLAG_DONT_EXPORT)
 {

  OidData->Oid = OID_GEN_VENDOR_DESCRIPTION;
  OidData->Length = 256;
  ZeroMemory(OidData->Data, 256);

  Status = PacketRequest(adapter, FALSE, OidData);

  if(Status==0 || ((char*)OidData->Data)[0]==0)
  {
   ODS("AddAdapter: unable to get a valid adapter description from the NIC driver\n");
  }

  ODSEx("Adapter Description=%s\n\n",OidData->Data);


  strcpy(TmpAdInfo->Description, OidData->Data);

  PacketGetLinkLayerFromRegistry(adapter, &(TmpAdInfo->LinkLayer));


  OidData->Oid = OID_802_3_CURRENT_ADDRESS;

  OidData->Length = 256;
  ZeroMemory(OidData->Data, 256);

  Status = PacketRequest(adapter, FALSE, OidData);
  if(Status)
  {
   memcpy(TmpAdInfo->MacAddress, OidData->Data, 6);
   TmpAdInfo->MacAddressLen = 6;
  }
  else
  {
   memset(TmpAdInfo->MacAddress, 0, 6);
   TmpAdInfo->MacAddressLen = 0;
  }


  TmpAdInfo->NetworkAddresses = GlobalAllocPtr(GMEM_MOVEABLE | GMEM_ZEROINIT, MAX_NETWORK_ADDRESSES * sizeof(npf_if_addr));
  if (TmpAdInfo->NetworkAddresses == ((void*)0)) {
   ODS("AddAdapter: GlobalAlloc Failed\n");
   PacketCloseAdapter(adapter);
   GlobalFreePtr(OidData);
   GlobalFreePtr(TmpAdInfo);
   ReleaseMutex(AdaptersInfoMutex);
   return FALSE;
  }

  TmpAdInfo->NNetworkAddresses = MAX_NETWORK_ADDRESSES;
  if(!PacketGetAddressesFromRegistry((LPTSTR)TmpAdInfo->Name, TmpAdInfo->NetworkAddresses, &TmpAdInfo->NNetworkAddresses))
  {


   TmpAdInfo->NNetworkAddresses = 0;

   if(!PacketAddIP6Addresses(TmpAdInfo))
   {

    GlobalFreePtr(TmpAdInfo->NetworkAddresses);
    TmpAdInfo->NetworkAddresses = ((void*)0);
    TmpAdInfo->NNetworkAddresses = 0;

   }

  }



  PacketAddIP6Addresses(TmpAdInfo);


  TmpAdInfo->Flags = INFO_FLAG_NDIS_ADAPTER;



  PacketCloseAdapter(adapter);
  GlobalFreePtr(OidData);
 }
 else
 {


  TmpAdInfo->Flags = INFO_FLAG_DONT_EXPORT;
 }


 TmpAdInfo->Next = AdaptersInfoList;
 AdaptersInfoList = TmpAdInfo;

 ReleaseMutex(AdaptersInfoMutex);
 return TRUE;
}

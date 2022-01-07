
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* Next; struct TYPE_4__* NetworkAddresses; int Name; } ;
typedef int PCHAR ;
typedef TYPE_1__* PADAPTER_INFO ;
typedef scalar_t__ BOOLEAN ;


 TYPE_1__* AdaptersInfoList ;
 int AdaptersInfoMutex ;
 scalar_t__ AddAdapter (int ,int ) ;
 int FAKE_NDISWAN_ADAPTER_NAME ;
 int GlobalFreePtr (TYPE_1__*) ;
 int INFINITE ;
 int PacketAddFakeNdisWanAdapter () ;
 int PacketGetAdaptersDag () ;
 int PacketGetAdaptersIPH () ;
 int ReleaseMutex (int ) ;
 scalar_t__ TRUE ;
 int WaitForSingleObject (int ,int ) ;
 int * p_dagc_open ;
 scalar_t__ strcmp (int ,int ) ;

BOOLEAN PacketUpdateAdInfo(PCHAR AdapterName)
{

 PADAPTER_INFO TAdInfo, PrevAdInfo;

 WaitForSingleObject(AdaptersInfoMutex, INFINITE);

 PrevAdInfo = TAdInfo = AdaptersInfoList;




 while(TAdInfo != ((void*)0))
 {
  if(strcmp(TAdInfo->Name, AdapterName) == 0)
  {
   if (strcmp(AdapterName, FAKE_NDISWAN_ADAPTER_NAME) == 0)
   {
    ReleaseMutex(AdaptersInfoMutex);
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

   if (TAdInfo->NetworkAddresses != ((void*)0))
    GlobalFreePtr(TAdInfo->NetworkAddresses);
   GlobalFreePtr(TAdInfo);

   break;
  }

  PrevAdInfo = TAdInfo;

  TAdInfo = TAdInfo->Next;
 }

 ReleaseMutex(AdaptersInfoMutex);




 if(AddAdapter(AdapterName, 0) == TRUE)
  return TRUE;





 PacketGetAdaptersIPH();
 PacketAddFakeNdisWanAdapter();
 return TRUE;
}

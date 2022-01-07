
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* Next; struct TYPE_5__* NetworkAddresses; } ;
typedef TYPE_1__* PVOID ;
typedef TYPE_1__* PADAPTER_INFO ;


 TYPE_1__* AdaptersInfoList ;
 int AdaptersInfoMutex ;
 int GlobalFreePtr (TYPE_1__*) ;
 int INFINITE ;
 int ODS (char*) ;
 int PacketAddFakeNdisWanAdapter () ;
 int PacketGetAdapters () ;
 int PacketGetAdaptersDag () ;
 int PacketGetAdaptersIPH () ;
 int ReleaseMutex (int ) ;
 int WaitForSingleObject (int ,int ) ;
 int * p_dagc_open ;

void PacketPopulateAdaptersInfoList()
{

 PADAPTER_INFO TAdInfo;
 PVOID Mem1, Mem2;

 WaitForSingleObject(AdaptersInfoMutex, INFINITE);

 if(AdaptersInfoList)
 {

  TAdInfo = AdaptersInfoList;
  while(TAdInfo != ((void*)0))
  {
   Mem1 = TAdInfo->NetworkAddresses;
   Mem2 = TAdInfo;

   TAdInfo = TAdInfo->Next;

   if (Mem1 != ((void*)0))
    GlobalFreePtr(Mem1);
   GlobalFreePtr(Mem2);
  }

  AdaptersInfoList = ((void*)0);
 }




 if(!PacketGetAdapters())
 {

  ODS("PacketPopulateAdaptersInfoList: registry scan for adapters failed!\n");
 }

 if(!PacketGetAdaptersIPH())
 {

  ODS("PacketPopulateAdaptersInfoList: failed to get adapters from the IP Helper API!\n");
 }

 if (!PacketAddFakeNdisWanAdapter())
 {
  ODS("PacketPopulateAdaptersInfoList: adding fake NdisWan adapter failed.\n");
 }
 ReleaseMutex(AdaptersInfoMutex);
}

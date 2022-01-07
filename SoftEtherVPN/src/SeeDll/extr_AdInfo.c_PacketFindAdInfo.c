
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* Next; int Name; } ;
typedef int PCHAR ;
typedef TYPE_1__* PADAPTER_INFO ;


 TYPE_1__* AdaptersInfoList ;
 int PacketPopulateAdaptersInfoList () ;
 scalar_t__ strcmp (int ,int ) ;

PADAPTER_INFO PacketFindAdInfo(PCHAR AdapterName)
{

 PADAPTER_INFO TAdInfo;

 if (AdaptersInfoList == ((void*)0))
  PacketPopulateAdaptersInfoList();

 TAdInfo = AdaptersInfoList;

 while(TAdInfo != ((void*)0))
 {
  if(strcmp(TAdInfo->Name, AdapterName) == 0) break;

  TAdInfo = TAdInfo->Next;
 }

 return TAdInfo;
}

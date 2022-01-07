
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int name ;
typedef scalar_t__ UINT ;
struct TYPE_9__ {int UserList; struct TYPE_9__* Msg; int AdminOptionList; int SecurityLogger; int PacketLogger; int RadiusOptionLock; int TicketList; int TrafficLock; struct TYPE_9__* SecureNATOption; struct TYPE_9__* Option; int OldTraffic; int Traffic; int SessionCounter; int NumSessionsBridge; int NumSessionsClient; int NumSessions; int LinkList; int MonitorList; int IpTable; int MacHashTable; int SessionList; struct TYPE_9__* Name; int lock_online; int lock; int Cedar; int HubDb; int RadiusSecret; struct TYPE_9__* RadiusServerName; scalar_t__ WatchDogStarted; } ;
typedef TYPE_1__ HUB ;


 int DeleteCounter (int ) ;
 int DeleteHubDb (int ) ;
 int DeleteLock (int ) ;
 int Free (TYPE_1__*) ;
 int FreeAccessList (TYPE_1__*) ;
 int FreeBuf (int ) ;
 int FreeLog (int ) ;
 int FreeTraffic (int ) ;
 int FreeUserList (int ) ;
 TYPE_1__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int MAX_SIZE ;
 int ReleaseAllLink (TYPE_1__*) ;
 int ReleaseCedar (int ) ;
 int ReleaseHashList (int ) ;
 int ReleaseList (int ) ;
 int StopHubWatchDog (TYPE_1__*) ;
 int StrCpy (char*,int,TYPE_1__*) ;

void CleanupHub(HUB *h)
{
 UINT i;
 char name[MAX_SIZE];

 if (h == ((void*)0))
 {
  return;
 }

 StrCpy(name, sizeof(name), h->Name);

 if (h->WatchDogStarted)
 {
  StopHubWatchDog(h);
 }

 FreeAccessList(h);

 if (h->RadiusServerName != ((void*)0))
 {
  Free(h->RadiusServerName);
  FreeBuf(h->RadiusSecret);
 }
 ReleaseAllLink(h);
 DeleteHubDb(h->HubDb);
 ReleaseCedar(h->Cedar);
 DeleteLock(h->lock);
 DeleteLock(h->lock_online);
 Free(h->Name);
 ReleaseList(h->SessionList);
 ReleaseHashList(h->MacHashTable);
 ReleaseList(h->IpTable);
 ReleaseList(h->MonitorList);
 ReleaseList(h->LinkList);
 DeleteCounter(h->NumSessions);
 DeleteCounter(h->NumSessionsClient);
 DeleteCounter(h->NumSessionsBridge);
 DeleteCounter(h->SessionCounter);
 FreeTraffic(h->Traffic);
 FreeTraffic(h->OldTraffic);
 Free(h->Option);

 Free(h->SecureNATOption);

 DeleteLock(h->TrafficLock);

 for (i = 0;i < LIST_NUM(h->TicketList);i++)
 {
  Free(LIST_DATA(h->TicketList, i));
 }

 ReleaseList(h->TicketList);

 DeleteLock(h->RadiusOptionLock);

 FreeLog(h->PacketLogger);
 FreeLog(h->SecurityLogger);

 for (i = 0;i < LIST_NUM(h->AdminOptionList);i++)
 {
  Free(LIST_DATA(h->AdminOptionList, i));
 }
 ReleaseList(h->AdminOptionList);

 if (h->Msg != ((void*)0))
 {
  Free(h->Msg);
 }

 FreeUserList(h->UserList);

 Free(h);
}

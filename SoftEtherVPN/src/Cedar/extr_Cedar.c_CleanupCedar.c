
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int X ;
typedef scalar_t__ UINT ;
struct TYPE_9__ {int CurrentActiveLinks; int FifoBudgetLock; int QueueBudgetLock; int CurrentTcpQueueSizeLock; int CurrentRegionLock; int OpenVPNPublicPortsLock; int UdpPortList; int AcceptingSockets; int CedarSuperLock; int AssignedClientLicense; int AssignedBridgeLicense; struct TYPE_9__* BuildInfo; struct TYPE_9__* VerString; int TrafficLock; int Traffic; struct TYPE_9__* HttpAcceptEncoding; struct TYPE_9__* HttpAcceptLanguage; struct TYPE_9__* HttpAccept; struct TYPE_9__* HttpUserAgent; struct TYPE_9__* MachineName; struct TYPE_9__* ServerStr; int TrafficDiffList; struct TYPE_9__* HubName; struct TYPE_9__* Name; struct TYPE_9__* CipherList; scalar_t__ ServerK; int * ServerX; int * DebugLog; int CurrentSessions; int ConnectionIncrement; int lock; int UDPEntryList; int ConnectionList; int HubList; int ListenerList; int CaList; int WebUI; } ;
typedef TYPE_1__ TRAFFIC_DIFF ;
typedef TYPE_1__ CEDAR ;


 int DeleteCounter (int ) ;
 int DeleteLock (int ) ;
 int Free (TYPE_1__*) ;
 int FreeCedarLayer3 (TYPE_1__*) ;
 int FreeK (scalar_t__) ;
 int FreeLocalBridgeList (TYPE_1__*) ;
 int FreeLog (int *) ;
 int FreeNetSvcList (TYPE_1__*) ;
 int FreeNoSslList (TYPE_1__*) ;
 int FreeTraffic (int ) ;
 int FreeX (int *) ;
 void* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int ReleaseIntList (int ) ;
 int ReleaseList (int ) ;
 int WuFreeWebUI (int ) ;

void CleanupCedar(CEDAR *c)
{
 UINT i;

 if (c == ((void*)0))
 {
  return;
 }

 WuFreeWebUI(c->WebUI);
 FreeCedarLayer3(c);







 for (i = 0;i < LIST_NUM(c->CaList);i++)
 {
  X *x = LIST_DATA(c->CaList, i);
  FreeX(x);
 }
 ReleaseList(c->CaList);

 ReleaseList(c->ListenerList);
 ReleaseList(c->HubList);
 ReleaseList(c->ConnectionList);

 ReleaseList(c->UDPEntryList);
 DeleteLock(c->lock);
 DeleteCounter(c->ConnectionIncrement);
 DeleteCounter(c->CurrentSessions);

 if (c->DebugLog != ((void*)0))
 {
  FreeLog(c->DebugLog);
 }

 if (c->ServerX)
 {
  FreeX(c->ServerX);
 }
 if (c->ServerK)
 {
  FreeK(c->ServerK);
 }

 if (c->CipherList)
 {
  Free(c->CipherList);
 }

 for (i = 0;i < LIST_NUM(c->TrafficDiffList);i++)
 {
  TRAFFIC_DIFF *d = LIST_DATA(c->TrafficDiffList, i);
  Free(d->Name);
  Free(d->HubName);
  Free(d);
 }

 ReleaseList(c->TrafficDiffList);

 Free(c->ServerStr);
 Free(c->MachineName);

 Free(c->HttpUserAgent);
 Free(c->HttpAccept);
 Free(c->HttpAcceptLanguage);
 Free(c->HttpAcceptEncoding);

 FreeTraffic(c->Traffic);

 DeleteLock(c->TrafficLock);

 FreeNetSvcList(c);

 Free(c->VerString);
 Free(c->BuildInfo);

 FreeLocalBridgeList(c);

 DeleteCounter(c->AssignedBridgeLicense);
 DeleteCounter(c->AssignedClientLicense);

 FreeNoSslList(c);

 DeleteLock(c->CedarSuperLock);

 DeleteCounter(c->AcceptingSockets);

 ReleaseIntList(c->UdpPortList);

 DeleteLock(c->OpenVPNPublicPortsLock);

 DeleteLock(c->CurrentRegionLock);

 DeleteLock(c->CurrentTcpQueueSizeLock);
 DeleteLock(c->QueueBudgetLock);
 DeleteLock(c->FifoBudgetLock);

 DeleteCounter(c->CurrentActiveLinks);

 Free(c);
}

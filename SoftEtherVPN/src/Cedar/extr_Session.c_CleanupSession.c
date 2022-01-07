
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_8__ {TYPE_1__* PacketData; } ;
struct TYPE_7__ {int LoggingRecordCount; struct TYPE_7__* Client_Message; int * CancelList; int TrafficLock; int * OldTraffic; int DeviceName; struct TYPE_7__* ClientOption; scalar_t__* NicDownOnDisconnect; scalar_t__ PacketAdapter; struct TYPE_7__* Username; scalar_t__ Connection; struct TYPE_7__* Policy; scalar_t__ Cancel2; scalar_t__ Cancel1; int HaltEvent; int lock; int * Thread; struct TYPE_7__* Name; int * Traffic; struct TYPE_7__* ClientAuth; int ClientK; int * ClientX; int * DelayedPacketList; } ;
typedef TYPE_1__ SESSION ;
typedef TYPE_2__ PKT ;


 int DeleteCounter (int ) ;
 int DeleteLock (int ) ;
 int Free (TYPE_1__*) ;
 int FreeK (int ) ;
 int FreePacket (TYPE_2__*) ;
 int FreePacketAdapter (scalar_t__) ;
 int FreeTraffic (int *) ;
 int FreeX (int *) ;
 TYPE_2__* LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 int ReleaseCancel (scalar_t__) ;
 int ReleaseCancelList (int *) ;
 int ReleaseConnection (scalar_t__) ;
 int ReleaseEvent (int ) ;
 int ReleaseList (int *) ;
 int ReleaseThread (int *) ;
 int UnixVLanSetState (int ,int) ;

void CleanupSession(SESSION *s)
{

 if (s == ((void*)0))
 {
  return;
 }


 if (s->DelayedPacketList != ((void*)0))
 {
  UINT i;
  for (i = 0;i < LIST_NUM(s->DelayedPacketList);i++)
  {
   PKT *p = LIST_DATA(s->DelayedPacketList, i);

   Free(p->PacketData);
   FreePacket(p);
  }

  ReleaseList(s->DelayedPacketList);
 }


 if (s->ClientOption != ((void*)0))
 {
  Free(s->ClientOption);
 }


 if (s->ClientAuth != ((void*)0))
 {
  if (s->ClientAuth->ClientX != ((void*)0))
  {
   FreeX(s->ClientAuth->ClientX);
  }
  if (s->ClientAuth->ClientX != ((void*)0))
  {
   FreeK(s->ClientAuth->ClientK);
  }
  Free(s->ClientAuth);
 }

 FreeTraffic(s->Traffic);
 Free(s->Name);

 if (s->Thread != ((void*)0))
 {
  ReleaseThread(s->Thread);
 }

 DeleteLock(s->lock);

 ReleaseEvent(s->HaltEvent);

 if (s->Cancel1)
 {
  ReleaseCancel(s->Cancel1);
 }

 if (s->Cancel2)
 {
  ReleaseCancel(s->Cancel2);
 }

 if (s->Policy)
 {
  Free(s->Policy);
 }

 if (s->Connection)
 {
  ReleaseConnection(s->Connection);
 }

 Free(s->Username);

 if (s->PacketAdapter)
 {
  FreePacketAdapter(s->PacketAdapter);
 }
 if (s->OldTraffic != ((void*)0))
 {
  FreeTraffic(s->OldTraffic);
 }

 DeleteLock(s->TrafficLock);

 if (s->CancelList != ((void*)0))
 {
  ReleaseCancelList(s->CancelList);
 }

 if (s->Client_Message != ((void*)0))
 {
  Free(s->Client_Message);
 }

 DeleteCounter(s->LoggingRecordCount);

 Free(s);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_5__ {int Lock; int Cedar; int SockEvent; int SendPacketList; int * Ipc; int * IpcConnectThread; } ;
typedef TYPE_1__ ETHERIP_SERVER ;
typedef int BLOCK ;


 int DeleteLock (int ) ;
 int EtherIPLog (TYPE_1__*,char*) ;
 int Free (TYPE_1__*) ;
 int FreeBlock (int *) ;
 int FreeIPC (int *) ;
 int * LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int ReleaseCedar (int ) ;
 int ReleaseList (int ) ;
 int ReleaseSockEvent (int ) ;
 int ReleaseThread (int *) ;

void CleanupEtherIPServer(ETHERIP_SERVER *s)
{
 UINT i;

 if (s == ((void*)0))
 {
  return;
 }

 EtherIPLog(s, "LE_STOP");

 if (s->IpcConnectThread != ((void*)0))
 {
  ReleaseThread(s->IpcConnectThread);
 }

 if (s->Ipc != ((void*)0))
 {
  FreeIPC(s->Ipc);
 }

 for (i = 0;i < LIST_NUM(s->SendPacketList);i++)
 {
  BLOCK *b = LIST_DATA(s->SendPacketList, i);

  FreeBlock(b);
 }

 ReleaseList(s->SendPacketList);

 ReleaseSockEvent(s->SockEvent);

 ReleaseCedar(s->Cedar);

 DeleteLock(s->Lock);

 Free(s);
}

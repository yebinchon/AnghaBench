
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int IntParam2; int IntParam1; } ;
struct TYPE_8__ {int * Ipc; TYPE_2__* TubeSend; TYPE_2__* TubeRecv; int Cedar; int FlushList; int DisconnectCauseDirection; int DisconnectCauseCode; } ;
typedef TYPE_1__ PPP_SESSION ;


 int Free (TYPE_1__*) ;
 int FreeIPC (int *) ;
 int FreeTubeFlushList (int ) ;
 int PPPFreeEapClient (TYPE_1__*) ;
 int PPPStoreLastPacket (TYPE_1__*,int *) ;
 int ReleaseCedar (int ) ;
 int ReleaseTube (TYPE_2__*) ;
 int TubeDisconnect (TYPE_2__*) ;

void FreePPPSession(PPP_SESSION *p)
{

 if (p == ((void*)0))
 {
  return;
 }

 if (p->TubeRecv != ((void*)0))
 {

  p->TubeRecv->IntParam1 = p->DisconnectCauseCode;
  p->TubeRecv->IntParam2 = p->DisconnectCauseDirection;
 }

 FreeTubeFlushList(p->FlushList);

 TubeDisconnect(p->TubeRecv);
 TubeDisconnect(p->TubeSend);

 ReleaseCedar(p->Cedar);

 ReleaseTube(p->TubeRecv);
 ReleaseTube(p->TubeSend);

 PPPStoreLastPacket(p, ((void*)0));

 if (p->Ipc != ((void*)0))
 {
  FreeIPC(p->Ipc);
 }

 PPPFreeEapClient(p);

 Free(p);
}

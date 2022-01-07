
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int TubeRecv; int TubeSend; int Cedar; int Interrupt; int SockEvent; int SendQueue; int RecvQueue; int PPPThread; } ;
typedef TYPE_1__ SSTP_SERVER ;
typedef int BLOCK ;


 int Free (TYPE_1__*) ;
 int FreeBlock (int *) ;
 int FreeInterruptManager (int ) ;
 int * GetNext (int ) ;
 int INFINITE ;
 int ReleaseCedar (int ) ;
 int ReleaseQueue (int ) ;
 int ReleaseSockEvent (int ) ;
 int ReleaseThread (int ) ;
 int ReleaseTube (int ) ;
 int TubeDisconnect (int ) ;
 int WaitThread (int ,int ) ;

void FreeSstpServer(SSTP_SERVER *s)
{

 if (s == ((void*)0))
 {
  return;
 }

 TubeDisconnect(s->TubeRecv);
 TubeDisconnect(s->TubeSend);

 WaitThread(s->PPPThread, INFINITE);
 ReleaseThread(s->PPPThread);

 while (1)
 {
  BLOCK *b = GetNext(s->RecvQueue);

  if (b == ((void*)0))
  {
   break;
  }

  FreeBlock(b);
 }

 while (1)
 {
  BLOCK *b = GetNext(s->SendQueue);

  if (b == ((void*)0))
  {
   break;
  }

  FreeBlock(b);
 }

 ReleaseQueue(s->RecvQueue);
 ReleaseQueue(s->SendQueue);

 ReleaseSockEvent(s->SockEvent);

 FreeInterruptManager(s->Interrupt);

 ReleaseCedar(s->Cedar);

 ReleaseTube(s->TubeSend);
 ReleaseTube(s->TubeRecv);

 Free(s);
}

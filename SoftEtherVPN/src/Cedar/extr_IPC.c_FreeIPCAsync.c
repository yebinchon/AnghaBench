
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int TubeForDisconnect; int Cedar; int * SockEvent; int * Ipc; int Thread; } ;
typedef TYPE_1__ IPC_ASYNC ;


 int Free (TYPE_1__*) ;
 int FreeIPC (int *) ;
 int INFINITE ;
 int ReleaseCedar (int ) ;
 int ReleaseSockEvent (int *) ;
 int ReleaseThread (int ) ;
 int ReleaseTube (int ) ;
 int TubeDisconnect (int ) ;
 int WaitThread (int ,int ) ;

void FreeIPCAsync(IPC_ASYNC *a)
{

 if (a == ((void*)0))
 {
  return;
 }

 TubeDisconnect(a->TubeForDisconnect);
 WaitThread(a->Thread, INFINITE);
 ReleaseThread(a->Thread);

 if (a->Ipc != ((void*)0))
 {
  FreeIPC(a->Ipc);
  a->Ipc = ((void*)0);
 }

 if (a->SockEvent != ((void*)0))
 {
  ReleaseSockEvent(a->SockEvent);
 }

 ReleaseCedar(a->Cedar);

 ReleaseTube(a->TubeForDisconnect);
 Free(a);
}

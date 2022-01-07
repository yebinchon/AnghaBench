
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_4__ {int IPv4ReceivedQueue; int ArpTable; int Interrupt; int Cedar; struct TYPE_4__* Policy; int Sock; int FlushList; } ;
typedef int IPC_ARP ;
typedef TYPE_1__ IPC ;
typedef int BLOCK ;


 int Disconnect (int ) ;
 int Free (TYPE_1__*) ;
 int FreeBlock (int *) ;
 int FreeInterruptManager (int ) ;
 int FreeTubeFlushList (int ) ;
 int * GetNext (int ) ;
 int IPCFreeARP (int *) ;
 int * LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int ReleaseCedar (int ) ;
 int ReleaseList (int ) ;
 int ReleaseQueue (int ) ;
 int ReleaseSock (int ) ;

void FreeIPC(IPC *ipc)
{
 UINT i;

 if (ipc == ((void*)0))
 {
  return;
 }

 FreeTubeFlushList(ipc->FlushList);

 Disconnect(ipc->Sock);
 ReleaseSock(ipc->Sock);

 if (ipc->Policy != ((void*)0))
 {
  Free(ipc->Policy);
 }

 ReleaseCedar(ipc->Cedar);

 FreeInterruptManager(ipc->Interrupt);

 for (i = 0;i < LIST_NUM(ipc->ArpTable);i++)
 {
  IPC_ARP *a = LIST_DATA(ipc->ArpTable, i);
  IPCFreeARP(a);
 }

 ReleaseList(ipc->ArpTable);

 while (1)
 {
  BLOCK *b = GetNext(ipc->IPv4ReceivedQueue);
  if (b == ((void*)0))
  {
   break;
  }

  FreeBlock(b);
 }

 ReleaseQueue(ipc->IPv4ReceivedQueue);

 Free(ipc);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int ref; } ;
struct TYPE_9__ {int FlushList; int IPv4ReceivedQueue; int ArpTable; int Interrupt; int MacAddress; TYPE_1__* Sock; TYPE_3__* Cedar; } ;
struct TYPE_8__ {int ref; } ;
typedef TYPE_1__ SOCK ;
typedef TYPE_2__ IPC ;
typedef TYPE_3__ CEDAR ;


 int AddRef (int ) ;
 int Copy (int ,void*,int) ;
 int IPCCmpArpTable ;
 int NewInterruptManager () ;
 int NewList (int ) ;
 int NewQueue () ;
 int NewTubeFlushList () ;
 TYPE_2__* ZeroMalloc (int) ;

IPC *NewIPCBySock(CEDAR *cedar, SOCK *s, void *mac_address)
{
 IPC *ipc;

 if (cedar == ((void*)0) || mac_address == ((void*)0) || s == ((void*)0))
 {
  return ((void*)0);
 }

 ipc = ZeroMalloc(sizeof(IPC));

 ipc->Cedar = cedar;
 AddRef(cedar->ref);

 ipc->Sock = s;
 AddRef(s->ref);

 Copy(ipc->MacAddress, mac_address, 6);

 ipc->Interrupt = NewInterruptManager();


 ipc->ArpTable = NewList(IPCCmpArpTable);


 ipc->IPv4ReceivedQueue = NewQueue();

 ipc->FlushList = NewTubeFlushList();

 return ipc;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int ref; } ;
struct TYPE_10__ {int Thread; TYPE_1__* SockEvent; int Param; TYPE_3__* Cedar; int TubeForDisconnect; } ;
struct TYPE_9__ {int ref; } ;
typedef TYPE_1__ SOCK_EVENT ;
typedef int IPC_PARAM ;
typedef TYPE_2__ IPC_ASYNC ;
typedef TYPE_3__ CEDAR ;


 int AddRef (int ) ;
 int Copy (int *,int *,int) ;
 int IPCAsyncThreadProc ;
 int NewThread (int ,TYPE_2__*) ;
 int NewTube (int ) ;
 TYPE_2__* ZeroMalloc (int) ;

IPC_ASYNC *NewIPCAsync(CEDAR *cedar, IPC_PARAM *param, SOCK_EVENT *sock_event)
{
 IPC_ASYNC *a;

 if (cedar == ((void*)0) || param == ((void*)0))
 {
  return ((void*)0);
 }

 a = ZeroMalloc(sizeof(IPC_ASYNC));

 a->TubeForDisconnect = NewTube(0);

 a->Cedar = cedar;
 AddRef(a->Cedar->ref);

 Copy(&a->Param, param, sizeof(IPC_PARAM));

 if (sock_event != ((void*)0))
 {
  a->SockEvent = sock_event;
  AddRef(a->SockEvent->ref);
 }

 a->Thread = NewThread(IPCAsyncThreadProc, a);

 return a;
}

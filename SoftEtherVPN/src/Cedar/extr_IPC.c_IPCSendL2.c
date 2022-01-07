
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_5__ {TYPE_1__* Sock; int FlushList; } ;
struct TYPE_4__ {int SendTube; } ;
typedef TYPE_2__ IPC ;


 int AddTubeToFlushList (int ,int ) ;
 int TubeSendEx (int ,void*,scalar_t__,int *,int) ;

void IPCSendL2(IPC *ipc, void *data, UINT size)
{

 if (ipc == ((void*)0) || data == ((void*)0) || size == 0)
 {
  return;
 }

 if (ipc->Sock == ((void*)0))
 {
  return;
 }

 TubeSendEx(ipc->Sock->SendTube, data, size, ((void*)0), 1);
 AddTubeToFlushList(ipc->FlushList, ipc->Sock->SendTube);
}

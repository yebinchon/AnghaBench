
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* Sock; } ;
struct TYPE_8__ {struct TYPE_8__* Header; int DataSize; int Data; } ;
struct TYPE_7__ {int RecvTube; } ;
typedef TYPE_2__ TUBEDATA ;
typedef TYPE_3__ IPC ;
typedef int BLOCK ;


 int Free (TYPE_2__*) ;
 int * NewBlock (int ,int ,int ) ;
 TYPE_2__* TubeRecvAsync (int ) ;

BLOCK *IPCRecvL2(IPC *ipc)
{
 TUBEDATA *d;
 BLOCK *b;

 if (ipc == ((void*)0))
 {
  return ((void*)0);
 }

 if (ipc->Sock == ((void*)0))
 {
  return ((void*)0);
 }

 d = TubeRecvAsync(ipc->Sock->RecvTube);

 if (d == ((void*)0))
 {
  return ((void*)0);
 }

 b = NewBlock(d->Data, d->DataSize, 0);

 Free(d->Header);
 Free(d);

 return b;
}

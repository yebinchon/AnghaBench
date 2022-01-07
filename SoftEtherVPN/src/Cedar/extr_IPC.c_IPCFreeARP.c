
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int PacketQueue; } ;
typedef TYPE_1__ IPC_ARP ;
typedef int BLOCK ;


 int Free (TYPE_1__*) ;
 int FreeBlock (int *) ;
 int * GetNext (int ) ;
 int ReleaseQueue (int ) ;

void IPCFreeARP(IPC_ARP *a)
{
 BLOCK *b;

 if (a == ((void*)0))
 {
  return;
 }

 while (1)
 {
  b = GetNext(a->PacketQueue);
  if (b == ((void*)0))
  {
   break;
  }

  FreeBlock(b);
 }

 ReleaseQueue(a->PacketQueue);

 Free(a);
}

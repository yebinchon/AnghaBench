
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int Halt; int Event; int Cancel; int PacketQueue; int PacketGeneratorThread; } ;
struct TYPE_7__ {TYPE_1__* PacketAdapter; } ;
struct TYPE_6__ {TYPE_3__* Param; } ;
typedef TYPE_2__ SESSION ;
typedef TYPE_3__ NULL_LAN ;
typedef int BLOCK ;


 int Free (TYPE_3__*) ;
 int FreeBlock (int *) ;
 int * GetNext (int ) ;
 int INFINITE ;
 int LockQueue (int ) ;
 int ReleaseCancel (int ) ;
 int ReleaseEvent (int ) ;
 int ReleaseQueue (int ) ;
 int ReleaseThread (int ) ;
 int Set (int ) ;
 int UnlockQueue (int ) ;
 int WaitThread (int ,int ) ;

void NullPaFree(SESSION *s)
{

 NULL_LAN *n;
 BLOCK *b;
 if (s == ((void*)0) || (n = s->PacketAdapter->Param) == ((void*)0))
 {
  return;
 }

 n->Halt = 1;
 Set(n->Event);

 WaitThread(n->PacketGeneratorThread, INFINITE);
 ReleaseThread(n->PacketGeneratorThread);

 LockQueue(n->PacketQueue);
 {
  while (b = GetNext(n->PacketQueue))
  {
   FreeBlock(b);
  }
 }
 UnlockQueue(n->PacketQueue);

 ReleaseQueue(n->PacketQueue);

 ReleaseCancel(n->Cancel);

 ReleaseEvent(n->Event);

 s->PacketAdapter->Param = ((void*)0);
 Free(n);
}

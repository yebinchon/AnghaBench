
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ CurrentSendPacketQueueSize; scalar_t__ LastServerConnectionReceivedBlocksNum; int SendPacketQueue; scalar_t__* StopAllLinkFlag; scalar_t__ Halting; } ;
struct TYPE_6__ {TYPE_1__* PacketAdapter; } ;
struct TYPE_5__ {scalar_t__ Param; } ;
typedef int THREAD ;
typedef TYPE_2__ SESSION ;
typedef TYPE_3__ LINK ;


 int LinkServerSessionThread ;
 int NewQueue () ;
 int * NewThread (int ,void*) ;
 int ReleaseThread (int *) ;
 int WaitThreadInit (int *) ;

bool LinkPaInit(SESSION *s)
{
 LINK *k;
 THREAD *t;

 if (s == ((void*)0) || (k = (LINK *)s->PacketAdapter->Param) == ((void*)0))
 {
  return 0;
 }

 if (k->Halting || (*k->StopAllLinkFlag))
 {
  return 0;
 }


 k->SendPacketQueue = NewQueue();


 t = NewThread(LinkServerSessionThread, (void *)k);
 WaitThreadInit(t);

 k->LastServerConnectionReceivedBlocksNum = 0;
 k->CurrentSendPacketQueueSize = 0;

 ReleaseThread(t);

 return 1;
}

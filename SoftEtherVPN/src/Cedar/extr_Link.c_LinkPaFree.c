
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ CurrentSendPacketQueueSize; int SendPacketQueue; int ServerSession; scalar_t__ LastServerConnectionReceivedBlocksNum; int Cedar; } ;
struct TYPE_6__ {TYPE_1__* PacketAdapter; } ;
struct TYPE_5__ {scalar_t__ Param; } ;
typedef TYPE_2__ SESSION ;
typedef TYPE_3__ LINK ;
typedef int BLOCK ;


 int CedarAddQueueBudget (int ,int) ;
 int FreeBlock (int *) ;
 int * GetNext (int ) ;
 int LockQueue (int ) ;
 int ReleaseQueue (int ) ;
 int ReleaseSession (int ) ;
 int StopSession (int ) ;
 int UnlockQueue (int ) ;

void LinkPaFree(SESSION *s)
{
 LINK *k;

 if (s == ((void*)0) || (k = (LINK *)s->PacketAdapter->Param) == ((void*)0))
 {
  return;
 }

 CedarAddQueueBudget(k->Cedar, -((int)k->LastServerConnectionReceivedBlocksNum));
 k->LastServerConnectionReceivedBlocksNum = 0;


 StopSession(k->ServerSession);
 ReleaseSession(k->ServerSession);


 LockQueue(k->SendPacketQueue);
 {
  BLOCK *block;
  while (block = GetNext(k->SendPacketQueue))
  {
   FreeBlock(block);
  }
 }
 UnlockQueue(k->SendPacketQueue);

 ReleaseQueue(k->SendPacketQueue);

 k->CurrentSendPacketQueueSize = 0;
}

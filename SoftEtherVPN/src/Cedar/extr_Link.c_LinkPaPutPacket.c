
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef void* UINT ;
struct TYPE_14__ {int ReceivedBlocks; } ;
struct TYPE_13__ {int Flag1; int LockFlag; TYPE_3__* Hub; int Cedar; void* LastServerConnectionReceivedBlocksNum; TYPE_4__* ServerSession; scalar_t__* StopAllLinkFlag; scalar_t__ Halting; } ;
struct TYPE_12__ {int Cancel1; TYPE_6__* Connection; TYPE_1__* PacketAdapter; } ;
struct TYPE_11__ {TYPE_2__* Option; } ;
struct TYPE_10__ {scalar_t__ YieldAfterStorePacket; } ;
struct TYPE_9__ {scalar_t__ Param; } ;
typedef TYPE_4__ SESSION ;
typedef TYPE_5__ LINK ;
typedef TYPE_6__ CONNECTION ;
typedef int BLOCK ;


 int Cancel (int ) ;
 int CedarAddQueueBudget (int ,int) ;
 scalar_t__ CedarGetFifoBudgetBalance (int ) ;
 int FreeBlock (int *) ;
 void* GetQueueNum (int ) ;
 int InsertReceivedBlockToQueue (TYPE_6__*,int *,int) ;
 int LockQueue (int ) ;
 int * NewBlock (void*,void*,int ) ;
 int UnlockQueue (int ) ;
 int YieldCpu () ;

bool LinkPaPutPacket(SESSION *s, void *data, UINT size)
{
 LINK *k;
 BLOCK *block = ((void*)0);
 SESSION *server_session;
 CONNECTION *server_connection;
 bool ret = 1;
 bool halting = 0;

 if (s == ((void*)0) || (k = (LINK *)s->PacketAdapter->Param) == ((void*)0))
 {
  return 0;
 }

 halting = (k->Halting || (*k->StopAllLinkFlag));

 server_session = k->ServerSession;
 server_connection = server_session->Connection;

 k->Flag1++;
 if ((k->Flag1 % 32) == 0)
 {

  UINT current_num;
  int diff;

  current_num = GetQueueNum(server_connection->ReceivedBlocks);

  diff = (int)current_num - (int)k->LastServerConnectionReceivedBlocksNum;

  k->LastServerConnectionReceivedBlocksNum = current_num;

  CedarAddQueueBudget(k->Cedar, diff);
 }



 if (data != ((void*)0))
 {
  if (halting == 0)
  {
   block = NewBlock(data, size, 0);
  }

  if (k->LockFlag == 0)
  {
   UINT current_num;
   int diff;

   k->LockFlag = 1;
   LockQueue(server_connection->ReceivedBlocks);

   current_num = GetQueueNum(server_connection->ReceivedBlocks);

   diff = (int)current_num - (int)k->LastServerConnectionReceivedBlocksNum;

   k->LastServerConnectionReceivedBlocksNum = current_num;

   CedarAddQueueBudget(k->Cedar, diff);
  }

  if (halting == 0)
  {
   if (CedarGetFifoBudgetBalance(k->Cedar) == 0)
   {
    FreeBlock(block);
   }
   else
   {
    InsertReceivedBlockToQueue(server_connection, block, 1);
   }
  }
 }
 else
 {
  UINT current_num;
  int diff;

  current_num = GetQueueNum(server_connection->ReceivedBlocks);

  diff = (int)current_num - (int)k->LastServerConnectionReceivedBlocksNum;

  k->LastServerConnectionReceivedBlocksNum = current_num;

  CedarAddQueueBudget(k->Cedar, diff);

  if (k->LockFlag)
  {
   k->LockFlag = 0;
   UnlockQueue(server_connection->ReceivedBlocks);
  }


  Cancel(server_session->Cancel1);

  if (k->Hub != ((void*)0) && k->Hub->Option != ((void*)0) && k->Hub->Option->YieldAfterStorePacket)
  {
   YieldCpu();
  }
 }

 if (halting)
 {
  ret = 0;
 }

 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_11__ {scalar_t__ Size; void* Buf; scalar_t__ IsFlooding; } ;
struct TYPE_10__ {int PacketQueue; } ;
struct TYPE_9__ {int Cedar; TYPE_1__* PacketAdapter; } ;
struct TYPE_8__ {scalar_t__ Param; } ;
typedef TYPE_2__ SESSION ;
typedef TYPE_3__ HUB_PA ;
typedef TYPE_4__ BLOCK ;


 int CedarAddCurrentTcpQueueSize (int ,int) ;
 int Free (TYPE_4__*) ;
 TYPE_4__* GetNext (int ) ;
 int LockQueue (int ) ;
 int UnlockQueue (int ) ;

UINT HubPaGetNextPacket(SESSION *s, void **data)
{
 UINT ret = 0;
 HUB_PA *pa = (HUB_PA *)s->PacketAdapter->Param;


 LockQueue(pa->PacketQueue);
 {
  BLOCK *block = GetNext(pa->PacketQueue);
  if (block == ((void*)0))
  {

   ret = 0;
  }
  else
  {
   if (block->IsFlooding)
   {
    CedarAddCurrentTcpQueueSize(s->Cedar, -((int)block->Size));
   }


   *data = block->Buf;
   ret = block->Size;

   Free(block);
  }
 }
 UnlockQueue(pa->PacketQueue);

 return ret;
}

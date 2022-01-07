
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_11__ {scalar_t__ Size; void* Buf; } ;
struct TYPE_10__ {int SendPacketQueue; int CurrentSendPacketQueueSize; scalar_t__* StopAllLinkFlag; scalar_t__ Halting; } ;
struct TYPE_9__ {TYPE_1__* PacketAdapter; } ;
struct TYPE_8__ {scalar_t__ Param; } ;
typedef TYPE_2__ SESSION ;
typedef TYPE_3__ LINK ;
typedef TYPE_4__ BLOCK ;


 int Free (TYPE_4__*) ;
 TYPE_4__* GetNext (int ) ;
 scalar_t__ INFINITE ;
 int LockQueue (int ) ;
 int UnlockQueue (int ) ;

UINT LinkPaGetNextPacket(SESSION *s, void **data)
{
 LINK *k;
 UINT ret = 0;

 if (s == ((void*)0) || data == ((void*)0) || (k = (LINK *)s->PacketAdapter->Param) == ((void*)0))
 {
  return INFINITE;
 }

 if (k->Halting || (*k->StopAllLinkFlag))
 {
  return INFINITE;
 }

 LockQueue(k->SendPacketQueue);
 {
  BLOCK *block = GetNext(k->SendPacketQueue);

  if (block != ((void*)0))
  {

   *data = block->Buf;
   ret = block->Size;

   k->CurrentSendPacketQueueSize -= block->Size;


   Free(block);
  }
 }
 UnlockQueue(k->SendPacketQueue);

 return ret;
}

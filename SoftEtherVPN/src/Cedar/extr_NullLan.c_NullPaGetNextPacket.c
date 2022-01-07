
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_11__ {int Size; void* Buf; } ;
struct TYPE_10__ {int PacketQueue; } ;
struct TYPE_9__ {TYPE_1__* PacketAdapter; } ;
struct TYPE_8__ {TYPE_3__* Param; } ;
typedef TYPE_2__ SESSION ;
typedef TYPE_3__ NULL_LAN ;
typedef TYPE_4__ BLOCK ;


 int Free (TYPE_4__*) ;
 TYPE_4__* GetNext (int ) ;
 int INFINITE ;
 int LockQueue (int ) ;
 int UnlockQueue (int ) ;

UINT NullPaGetNextPacket(SESSION *s, void **data)
{
 UINT size = 0;

 NULL_LAN *n;
 if (s == ((void*)0) || (n = s->PacketAdapter->Param) == ((void*)0))
 {
  return INFINITE;
 }

 LockQueue(n->PacketQueue);
 {
  BLOCK *b = GetNext(n->PacketQueue);

  if (b != ((void*)0))
  {
   *data = b->Buf;
   size = b->Size;
   Free(b);
  }
 }
 UnlockQueue(n->PacketQueue);

 return size;
}

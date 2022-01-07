
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int Size; int Buf; } ;
struct TYPE_5__ {int Data; } ;
typedef TYPE_1__ IKE_PACKET_DATA_PAYLOAD ;
typedef TYPE_2__ BUF ;


 int MemToBuf (int ,int ) ;

bool IkeParseDataPayload(IKE_PACKET_DATA_PAYLOAD *t, BUF *b)
{

 if (t == ((void*)0) || b == ((void*)0))
 {
  return 0;
 }

 t->Data = MemToBuf(b->Buf, b->Size);

 return 1;
}

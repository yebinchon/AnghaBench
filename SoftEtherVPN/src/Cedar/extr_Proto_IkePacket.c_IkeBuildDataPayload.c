
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* Data; } ;
struct TYPE_4__ {int Size; int Buf; } ;
typedef TYPE_2__ IKE_PACKET_DATA_PAYLOAD ;
typedef int BUF ;


 int * NewBuf () ;
 int WriteBuf (int *,int ,int ) ;

BUF *IkeBuildDataPayload(IKE_PACKET_DATA_PAYLOAD *t)
{
 BUF *b;

 if (t == ((void*)0))
 {
  return ((void*)0);
 }

 b = NewBuf();
 WriteBuf(b, t->Data->Buf, t->Data->Size);

 return b;
}

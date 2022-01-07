
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int Size; int Buf; } ;
typedef TYPE_1__ BUF ;


 TYPE_1__* MemToBuf (int ,int ) ;

BUF *CloneBuf(BUF *b)
{
 BUF *bb;

 if (b == ((void*)0))
 {
  return ((void*)0);
 }

 bb = MemToBuf(b->Buf, b->Size);

 return bb;
}

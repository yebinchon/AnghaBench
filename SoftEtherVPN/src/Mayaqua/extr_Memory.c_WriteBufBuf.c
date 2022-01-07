
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int Size; int Buf; } ;
typedef TYPE_1__ BUF ;


 int WriteBuf (TYPE_1__*,int ,int ) ;

void WriteBufBuf(BUF *b, BUF *bb)
{

 if (b == ((void*)0) || bb == ((void*)0))
 {
  return;
 }

 WriteBuf(b, bb->Buf, bb->Size);
}

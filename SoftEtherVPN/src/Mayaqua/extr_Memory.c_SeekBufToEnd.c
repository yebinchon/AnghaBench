
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Size; } ;
typedef TYPE_1__ BUF ;


 int SeekBuf (TYPE_1__*,int ,int ) ;

void SeekBufToEnd(BUF *b)
{

 if (b == ((void*)0))
 {
  return;
 }

 SeekBuf(b, b->Size, 0);
}

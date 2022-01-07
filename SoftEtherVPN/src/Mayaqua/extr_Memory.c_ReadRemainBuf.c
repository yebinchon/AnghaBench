
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_6__ {scalar_t__ Size; scalar_t__ Current; } ;
typedef TYPE_1__ BUF ;


 TYPE_1__* ReadBufFromBuf (TYPE_1__*,scalar_t__) ;

BUF *ReadRemainBuf(BUF *b)
{
 UINT size;

 if (b == ((void*)0))
 {
  return ((void*)0);
 }

 if (b->Size < b->Current)
 {
  return ((void*)0);
 }

 size = b->Size - b->Current;

 return ReadBufFromBuf(b, size);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ Size; int Buf; } ;
typedef TYPE_1__ BUF ;


 scalar_t__ Cmp (int ,int ,scalar_t__) ;

bool CompareBuf(BUF *b1, BUF *b2)
{

 if (b1 == ((void*)0) && b2 == ((void*)0))
 {
  return 1;
 }
 if (b1 == ((void*)0) || b2 == ((void*)0))
 {
  return 0;
 }

 if (b1->Size != b2->Size)
 {
  return 0;
 }

 if (Cmp(b1->Buf, b2->Buf, b1->Size) != 0)
 {
  return 0;
 }

 return 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ Current; scalar_t__ Size; } ;
typedef TYPE_1__ BUF ;



void ClearBuf(BUF *b)
{

 if (b == ((void*)0))
 {
  return;
 }

 b->Size = 0;
 b->Current = 0;
}

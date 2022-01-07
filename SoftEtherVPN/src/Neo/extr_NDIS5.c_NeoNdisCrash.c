
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int Size; int Buf; } ;
typedef TYPE_1__ NEO_QUEUE ;


 int NeoCopy (int ,char*,int) ;

void NeoNdisCrash()
{
 NEO_QUEUE *q;
 q = (NEO_QUEUE *)0xACACACAC;
 q->Size = 128;
 NeoCopy(q->Buf, "ABCDEFG", 8);
}

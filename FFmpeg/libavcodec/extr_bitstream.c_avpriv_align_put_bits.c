
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int bit_left; } ;
typedef TYPE_1__ PutBitContext ;


 int put_bits (TYPE_1__*,int,int ) ;

void avpriv_align_put_bits(PutBitContext *s)
{
    put_bits(s, s->bit_left & 7, 0);
}

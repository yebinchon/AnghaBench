
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int exponent_bits; } ;
typedef TYPE_1__ AC3EncodeContext ;


 int bit_alloc_masking (TYPE_1__*) ;
 int cbr_bit_allocation (TYPE_1__*) ;
 int count_exponent_bits (TYPE_1__*) ;
 int count_frame_bits (TYPE_1__*) ;

int ff_ac3_compute_bit_allocation(AC3EncodeContext *s)
{
    count_frame_bits(s);

    s->exponent_bits = count_exponent_bits(s);

    bit_alloc_masking(s);

    return cbr_bit_allocation(s);
}

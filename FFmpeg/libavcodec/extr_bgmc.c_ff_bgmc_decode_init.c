
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GetBitContext ;


 int AVERROR_INVALIDDATA ;
 unsigned int TOP_VALUE ;
 scalar_t__ VALUE_BITS ;
 scalar_t__ get_bits_left (int *) ;
 unsigned int get_bits_long (int *,scalar_t__) ;

int ff_bgmc_decode_init(GetBitContext *gb, unsigned int *h,
                         unsigned int *l, unsigned int *v)
{
    if (get_bits_left(gb) < VALUE_BITS)
        return AVERROR_INVALIDDATA;

    *h = TOP_VALUE;
    *l = 0;
    *v = get_bits_long(gb, VALUE_BITS);

    return 0;
}

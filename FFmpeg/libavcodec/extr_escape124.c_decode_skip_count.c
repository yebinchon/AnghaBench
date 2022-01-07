
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GetBitContext ;


 int get_bits (int *,int) ;
 unsigned int get_bits1 (int *) ;
 int get_bits_left (int *) ;

__attribute__((used)) static unsigned decode_skip_count(GetBitContext* gb)
{
    unsigned value;


    if (get_bits_left(gb) < 1)
        return -1;
    value = get_bits1(gb);
    if (!value)
        return value;

    value += get_bits(gb, 3);
    if (value != (1 + ((1 << 3) - 1)))
        return value;

    value += get_bits(gb, 7);
    if (value != (1 + ((1 << 3) - 1)) + ((1 << 7) - 1))
        return value;

    return value + get_bits(gb, 12);
}

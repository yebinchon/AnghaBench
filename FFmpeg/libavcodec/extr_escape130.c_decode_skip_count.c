
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GetBitContext ;


 int get_bits (int *,int) ;
 int get_bits1 (int *) ;
 int get_bits_left (int *) ;

__attribute__((used)) static int decode_skip_count(GetBitContext* gb)
{
    int value;

    if (get_bits_left(gb) < 1+3)
        return -1;

    value = get_bits1(gb);
    if (value)
        return 0;

    value = get_bits(gb, 3);
    if (value)
        return value;

    value = get_bits(gb, 8);
    if (value)
        return value + 7;

    value = get_bits(gb, 15);
    if (value)
        return value + 262;

    return -1;
}

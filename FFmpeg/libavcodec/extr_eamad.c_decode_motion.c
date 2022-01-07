
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GetBitContext ;


 scalar_t__ get_bits (int *,int) ;
 scalar_t__ get_bits1 (int *) ;

__attribute__((used)) static int decode_motion(GetBitContext *gb)
{
    int value = 0;
    if (get_bits1(gb)) {
        if (get_bits1(gb))
            value = -17;
        value += get_bits(gb, 4) + 1;
    }
    return value;
}

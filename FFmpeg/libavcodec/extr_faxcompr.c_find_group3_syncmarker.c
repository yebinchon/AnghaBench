
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GetBitContext ;


 scalar_t__ get_bits1 (int *) ;
 scalar_t__ get_bits_count (int *) ;

__attribute__((used)) static int find_group3_syncmarker(GetBitContext *gb, int srcsize)
{
    unsigned int state = -1;
    srcsize -= get_bits_count(gb);
    while (srcsize-- > 0) {
        state += state + get_bits1(gb);
        if ((state & 0xFFF) == 1)
            return 0;
    }
    return -1;
}

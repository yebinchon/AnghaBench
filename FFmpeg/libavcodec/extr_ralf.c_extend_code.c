
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GetBitContext ;


 unsigned int get_bits (int *,int) ;
 int get_ue_golomb (int *) ;

__attribute__((used)) static inline int extend_code(GetBitContext *gb, int val, int range, int bits)
{
    if (val == 0) {
        val = -range - get_ue_golomb(gb);
    } else if (val == range * 2) {
        val = range + get_ue_golomb(gb);
    } else {
        val -= range;
    }
    if (bits)
        val = ((unsigned)val << bits) | get_bits(gb, bits);
    return val;
}

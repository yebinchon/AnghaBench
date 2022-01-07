
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int GetBitContext ;


 int get_bits (int *,int) ;
 int get_unary (int *,int ,int) ;
 int memmove (int*,int*,int) ;

__attribute__((used)) static inline uint8_t decode_sym_565(GetBitContext *gb, uint8_t lru[8],
                                     int bits)
{
    uint8_t c, val;

    c = get_unary(gb, 0, bits);
    if (!c) {
        val = get_bits(gb, bits);
        memmove(lru + 1, lru, sizeof(*lru) * (6 - 1));
    } else {
        val = lru[c - 1];
        memmove(lru + 1, lru, sizeof(*lru) * (c - 1));
    }
    lru[0] = val;

    return val;
}

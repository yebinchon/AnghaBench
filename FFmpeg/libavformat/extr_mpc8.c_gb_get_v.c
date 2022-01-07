
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int int64_t ;
typedef int GetBitContext ;


 int get_bits (int *,int) ;
 scalar_t__ get_bits1 (int *) ;

__attribute__((used)) static inline int64_t gb_get_v(GetBitContext *gb)
{
    uint64_t v = 0;
    int bits = 0;
    while(get_bits1(gb) && bits < 64-7){
        v <<= 7;
        v |= get_bits(gb, 7);
        bits += 7;
    }
    v <<= 7;
    v |= get_bits(gb, 7);

    return v;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PutBitContext ;
typedef int GetBitContext ;


 int MIN_CACHE_BITS ;
 int get_bits (int *,int) ;
 int get_bits_left (int *) ;
 int put_bits (int *,int,int ) ;

__attribute__((used)) static inline void bit_copy(PutBitContext *pb, GetBitContext *gb)
{
    int bits_left = get_bits_left(gb);
    while (bits_left >= MIN_CACHE_BITS) {
        put_bits(pb, MIN_CACHE_BITS, get_bits(gb, MIN_CACHE_BITS));
        bits_left -= MIN_CACHE_BITS;
    }
    if (bits_left > 0)
        put_bits(pb, bits_left, get_bits(gb, bits_left));
}

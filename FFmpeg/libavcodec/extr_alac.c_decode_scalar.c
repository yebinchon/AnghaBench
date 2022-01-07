
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GetBitContext ;


 unsigned int get_bits_long (int *,int) ;
 unsigned int get_unary_0_9 (int *) ;
 int show_bits (int *,int) ;
 int skip_bits (int *,int) ;

__attribute__((used)) static inline unsigned int decode_scalar(GetBitContext *gb, int k, int bps)
{
    unsigned int x = get_unary_0_9(gb);

    if (x > 8) {

        x = get_bits_long(gb, bps);
    } else if (k != 1) {
        int extrabits = show_bits(gb, k);


        x = (x << k) - x;

        if (extrabits > 1) {
            x += extrabits - 1;
            skip_bits(gb, k);
        } else
            skip_bits(gb, k - 1);
    }
    return x;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PutBitContext ;


 int av_log2 (int) ;
 int put_bits (int *,int,int) ;
 int put_sbits (int *,unsigned int,int) ;

__attribute__((used)) static inline void encode_vlc_codeword(PutBitContext *pb, unsigned codebook, int val)
{
    unsigned int rice_order, exp_order, switch_bits, switch_val;
    int exponent;


    switch_bits = (codebook & 3) + 1;
    rice_order = codebook >> 5;
    exp_order = (codebook >> 2) & 7;

    switch_val = switch_bits << rice_order;

    if (val >= switch_val) {
        val -= switch_val - (1 << exp_order);
        exponent = av_log2(val);

        put_bits(pb, exponent - exp_order + switch_bits, 0);
        put_bits(pb, exponent + 1, val);
    } else {
        exponent = val >> rice_order;

        if (exponent)
            put_bits(pb, exponent, 0);
        put_bits(pb, 1, 1);
        if (rice_order)
            put_sbits(pb, rice_order, val);
    }
}

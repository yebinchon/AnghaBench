
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PutBitContext ;


 unsigned int av_log2 (int) ;
 int put_bits (int *,int,int) ;
 int put_sbits (int *,unsigned int,int) ;

__attribute__((used)) static void encode_codeword(PutBitContext *pb, int val, int codebook)
{
    unsigned int rice_order, exp_order, switch_bits, first_exp, exp, zeros;


    switch_bits = codebook & 3;
    rice_order = codebook >> 5;
    exp_order = (codebook >> 2) & 7;

    first_exp = ((switch_bits + 1) << rice_order);

    if (val >= first_exp) {
        val -= first_exp;
        val += (1 << exp_order);
        exp = av_log2(val);
        zeros = exp - exp_order + switch_bits + 1;
        put_bits(pb, zeros, 0);
        put_bits(pb, exp + 1, val);
    } else if (rice_order) {
        put_bits(pb, (val >> rice_order), 0);
        put_bits(pb, 1, 1);
        put_sbits(pb, rice_order, val);
    } else {
        put_bits(pb, val, 0);
        put_bits(pb, 1, 1);
    }
}

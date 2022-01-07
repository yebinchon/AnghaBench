
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int av_log2 (int) ;

__attribute__((used)) static inline int estimate_vlc(unsigned codebook, int val)
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

        return exponent * 2 - exp_order + switch_bits + 1;
    } else {
        return (val >> rice_order) + rice_order + 1;
    }
}

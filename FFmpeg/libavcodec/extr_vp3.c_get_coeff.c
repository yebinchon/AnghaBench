
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16_t ;
typedef int GetBitContext ;


 int* coeff_get_bits ;
 int ** coeff_tables ;
 int get_bits (int *,int) ;
 int* zero_run_base ;
 int* zero_run_get_bits ;

__attribute__((used)) static inline int get_coeff(GetBitContext *gb, int token, int16_t *coeff)
{
    int bits_to_get, zero_run;

    bits_to_get = coeff_get_bits[token];
    if (bits_to_get)
        bits_to_get = get_bits(gb, bits_to_get);
    *coeff = coeff_tables[token][bits_to_get];

    zero_run = zero_run_base[token];
    if (zero_run_get_bits[token])
        zero_run += get_bits(gb, zero_run_get_bits[token]);

    return zero_run;
}

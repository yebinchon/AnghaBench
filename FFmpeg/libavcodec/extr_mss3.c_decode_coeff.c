
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RangeCoder ;
typedef int Model ;


 int rac_get_bit (int *) ;
 int rac_get_bits (int *,int) ;
 int rac_get_model_sym (int *,int *) ;

__attribute__((used)) static int decode_coeff(RangeCoder *c, Model *m)
{
    int val, sign;

    val = rac_get_model_sym(c, m);
    if (val) {
        sign = rac_get_bit(c);
        if (val > 1) {
            val--;
            val = (1 << val) + rac_get_bits(c, val);
        }
        if (!sign)
            val = -val;
    }

    return val;
}

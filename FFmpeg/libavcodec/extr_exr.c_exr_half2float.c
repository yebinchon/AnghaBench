
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union av_intfloat32 {unsigned int i; } ;
typedef int uint16_t ;


 unsigned int FLOAT_MAX_BIASED_EXP ;
 int HALF_FLOAT_MAX_BIASED_EXP ;
 unsigned int HALF_FLOAT_MIN_BIASED_EXP_AS_SINGLE_FP_EXP ;

__attribute__((used)) static union av_intfloat32 exr_half2float(uint16_t hf)
{
    unsigned int sign = (unsigned int) (hf >> 15);
    unsigned int mantissa = (unsigned int) (hf & ((1 << 10) - 1));
    unsigned int exp = (unsigned int) (hf & HALF_FLOAT_MAX_BIASED_EXP);
    union av_intfloat32 f;

    if (exp == HALF_FLOAT_MAX_BIASED_EXP) {



        exp = FLOAT_MAX_BIASED_EXP;
        if (mantissa)
            mantissa = (1 << 23) - 1;
    } else if (exp == 0x0) {

        if (mantissa) {
            mantissa <<= 1;
            exp = HALF_FLOAT_MIN_BIASED_EXP_AS_SINGLE_FP_EXP;

            while ((mantissa & (1 << 10))) {


                mantissa <<= 1;
                exp -= (1 << 23);
            }

            mantissa &= ((1 << 10) - 1);

            mantissa <<= 13;
        }
    } else {

        mantissa <<= 13;

        exp = (exp << 13) + HALF_FLOAT_MIN_BIASED_EXP_AS_SINGLE_FP_EXP;
    }

    f.i = (sign << 31) | exp | mantissa;

    return f;
}

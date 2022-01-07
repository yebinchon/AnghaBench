
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float ldexp (double,long) ;

__attribute__((used)) static float vorbisfloat2float(unsigned val)
{
    double mant = val & 0x1fffff;
    long exp = (val & 0x7fe00000L) >> 21;
    if (val & 0x80000000)
        mant = -mant;
    return ldexp(mant, exp - 20 - 768);
}

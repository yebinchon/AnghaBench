
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int av_assert2 (int) ;
 int* exp2a ;
 unsigned int* exp2b ;

int ff_exp2(uint16_t power)
{
    unsigned int result= exp2a[power>>10] + 0x10000;

    av_assert2(power <= 0x7fff);

    result= (result<<3) + ((result*exp2b[(power>>5)&31])>>17);
    return result + ((result*(power&31)*89)>>22);
}

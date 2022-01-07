
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16_t ;


 int av_assert2 (int) ;
 int ff_sqrt (unsigned int) ;

__attribute__((used)) static int16_t square_root(unsigned val)
{
    av_assert2(!(val & 0x80000000));

    return (ff_sqrt(val << 1) >> 1) & (~1);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int av_popcount (int ) ;

__attribute__((used)) static unsigned compute_bit_depth(uint16_t mask)
{
    return av_popcount(mask);
}

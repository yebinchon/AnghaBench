
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;


 int avg_width8_msa (int const*,int ,int *,int ,int) ;

void ff_avg_width8_msa(uint8_t *dest, const uint8_t *src, ptrdiff_t stride)
{
    avg_width8_msa(src, stride, dest, stride, 8);
}

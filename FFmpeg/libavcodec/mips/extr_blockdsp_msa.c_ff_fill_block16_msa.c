
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;


 int copy_8bit_value_width16_msa (int *,int ,int ,int) ;

void ff_fill_block16_msa(uint8_t *src, uint8_t val, ptrdiff_t stride, int height)
{
    copy_8bit_value_width16_msa(src, val, stride, height);
}

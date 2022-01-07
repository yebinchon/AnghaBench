
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int sum_u8src_16width_msa (int *,int) ;

int ff_pix_sum_msa(uint8_t *pix, int line_size)
{
    return sum_u8src_16width_msa(pix, line_size);
}

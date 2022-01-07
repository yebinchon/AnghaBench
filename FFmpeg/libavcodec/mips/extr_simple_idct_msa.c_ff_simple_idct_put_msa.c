
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;
typedef int int16_t ;


 int simple_idct_put_msa (int *,int ,int *) ;

void ff_simple_idct_put_msa(uint8_t *dst, ptrdiff_t dst_stride, int16_t *block)
{
    simple_idct_put_msa(dst, dst_stride, block);
}

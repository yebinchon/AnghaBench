
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;


 int copy_8x8_msa (int const*,int ,int *,int ) ;

void ff_copy_8x8_msa(uint8_t *dest, const uint8_t *src, ptrdiff_t stride)
{
    copy_8x8_msa(src, stride, dest, stride);
}

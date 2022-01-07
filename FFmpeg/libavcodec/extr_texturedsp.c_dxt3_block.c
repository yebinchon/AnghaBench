
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;


 int dxt3_block_internal (int *,int ,int const*) ;

__attribute__((used)) static int dxt3_block(uint8_t *dst, ptrdiff_t stride, const uint8_t *block)
{
    dxt3_block_internal(dst, stride, block);

    return 16;
}

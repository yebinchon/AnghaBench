
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;


 int rgtc1_block_internal (int *,int ,int const*,int,int ,int ,int) ;

__attribute__((used)) static int rgtc1s_block(uint8_t *dst, ptrdiff_t stride, const uint8_t *block)
{
    rgtc1_block_internal(dst, stride, block, 1, 0, 0, 4);

    return 8;
}

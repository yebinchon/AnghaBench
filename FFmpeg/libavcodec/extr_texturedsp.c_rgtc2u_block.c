
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;


 int rgtc2_block_internal (int *,int ,int const*,int ) ;

__attribute__((used)) static int rgtc2u_block(uint8_t *dst, ptrdiff_t stride, const uint8_t *block)
{
    rgtc2_block_internal(dst, stride, block, 0);

    return 16;
}

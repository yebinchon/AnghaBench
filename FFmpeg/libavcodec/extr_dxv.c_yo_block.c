
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;


 int yao_subblock (int *,int *,int ,int const*) ;

__attribute__((used)) static int yo_block(uint8_t *dst, ptrdiff_t stride,
                    uint8_t *unused0, ptrdiff_t unused1,
                    const uint8_t *block)
{
    uint8_t yo_indices[16];

    yao_subblock(dst, yo_indices, stride, block);
    yao_subblock(dst + 4, yo_indices, stride, block + 8);
    yao_subblock(dst + 8, yo_indices, stride, block + 16);
    yao_subblock(dst + 12, yo_indices, stride, block + 24);

    return 32;
}

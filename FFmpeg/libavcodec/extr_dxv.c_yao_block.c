
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;


 int yao_subblock (int *,int *,int ,int const*) ;

__attribute__((used)) static int yao_block(uint8_t *plane0, ptrdiff_t stride0,
                     uint8_t *plane3, ptrdiff_t stride1,
                     const uint8_t *block)
{
    uint8_t yo_indices[16];
    uint8_t a_indices[16];

    yao_subblock(plane0, yo_indices, stride0, block);
    yao_subblock(plane3, a_indices, stride1, block + 8);
    yao_subblock(plane0 + 4, yo_indices, stride0, block + 16);
    yao_subblock(plane3 + 4, a_indices, stride1, block + 24);
    yao_subblock(plane0 + 8, yo_indices, stride0, block + 32);
    yao_subblock(plane3 + 8, a_indices, stride1, block + 40);
    yao_subblock(plane0 + 12, yo_indices, stride0, block + 48);
    yao_subblock(plane3 + 12, a_indices, stride1, block + 56);

    return 64;
}

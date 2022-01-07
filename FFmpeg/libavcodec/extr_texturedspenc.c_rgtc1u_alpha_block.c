
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;


 int compress_alpha (int *,int ,int const*) ;

__attribute__((used)) static int rgtc1u_alpha_block(uint8_t *dst, ptrdiff_t stride, const uint8_t *block)
{
    compress_alpha(dst, stride, block);

    return 8;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int ptrdiff_t ;
struct TYPE_3__ {int fill_val; int coef_model; } ;
typedef int RangeCoder ;
typedef TYPE_1__ FillBlockCoder ;


 scalar_t__ decode_coeff (int *,int *) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static void decode_fill_block(RangeCoder *c, FillBlockCoder *fc,
                              uint8_t *dst, ptrdiff_t stride, int block_size)
{
    int i;

    fc->fill_val += decode_coeff(c, &fc->coef_model);

    for (i = 0; i < block_size; i++, dst += stride)
        memset(dst, fc->fill_val, block_size);
}
